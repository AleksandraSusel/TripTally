import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/image_picker_helper.dart';
import 'package:trip_tally/presentation/utils/permissions/bloc/permissions_bloc.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class AvatarPicker extends StatefulWidget {
  const AvatarPicker({super.key});

  @override
  State<AvatarPicker> createState() => _AvatarPickerState();
}

class _AvatarPickerState extends State<AvatarPicker> {
  XFile? _image;
  ImageSource? _imageSource;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PermissionsBloc, PermissionsState>(
      listener: (context, state) => state.whenOrNull(
        loaded: (status) => _pickImage(_imageSource),
        permanentlyDenied: () => ImagePickerHelper.showPermissionDeniedDialog(context),
        error: (error) => showSnackBar(
          context,
          error.errorText(context),
        ),
      ),
      child: GestureDetector(
        onTap: () => ImagePickerHelper.showPicker(_onImageSourceSelected, context),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            SizedBox(
              height: AppDimensions.d100,
              width: AppDimensions.d100,
              child: CircleAvatar(
                backgroundColor: context.thc.primary,
                backgroundImage: _image != null ? FileImage(File(_image!.path)) : null,
                child: _image == null
                    ? const Padding(
                        padding: EdgeInsets.all(AppDimensions.d8),
                        child: SvgAsset(AppPaths.camera),
                      )
                    : null,
              ),
            ),
            SizedBox(
              height: AppDimensions.d34,
              width: AppDimensions.d34,
              child: CircleAvatar(
                backgroundColor: context.thc.secondaryContainer,
                child: const Padding(
                  padding: EdgeInsets.all(AppDimensions.d4),
                  child: SvgAsset(AppPaths.plusOutlined),
                ),
              ),
            ),
          ],
        ).animate().fadeIn(delay: 1.2.seconds, duration: 600.ms),
      ),
    );
  }

  Future<void> _pickImage(ImageSource? source) async {
    if (source != null) {
      final pickedFile = await ImagePickerHelper.pickImage(source);
      if (pickedFile != null) {
        setState(() => _image = XFile(pickedFile.path));
      } else {
        if (mounted) {
          showSnackBar(context, Errors.noImageSelected.errorText(context));
        }
      }
      if (mounted) {
        await context.router.maybePop();
      }
    }
  }

  void _onImageSourceSelected(ImageSource source) {
    setState(() => _imageSource = source);
    final permission = source == ImageSource.camera ? Permission.camera : Permission.photos;
    context.read<PermissionsBloc>().add(PermissionCheckEvent(permission));
  }
}
