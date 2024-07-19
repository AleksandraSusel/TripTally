import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class ImagePickerHelper {
  const ImagePickerHelper();

  static Future<XFile?> pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await ImagePicker().pickImage(
        source: source,
        preferredCameraDevice: CameraDevice.front,
      );
      return pickedFile;
    } catch (e) {
      return null;
    }
  }

  static void showPermissionDeniedDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(context.tr.generic_permissionDenied),
          content: Text(context.tr.generic_permissionDeniedDesc),
          actions: <Widget>[
            TextButton(
              child: Text(context.tr.generic_cancel),
              onPressed: () => context.router.maybePop(),
            ),
            TextButton(
              child: Text(context.tr.generic_settings),
              onPressed: () {
                openAppSettings();
                context.router.maybePop();
              },
            ),
          ],
        );
      },
    );
  }

  static void showPicker(
    ValueSetter<ImageSource> onImageSourceSelected,
    BuildContext context,
  ) {
    showModalBottomSheet<void>(
      useSafeArea: true,
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          minimum: const EdgeInsets.all(AppDimensions.d16),
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.photo_library,
                  size: AppDimensions.d28,
                  color: context.thc.primary,
                ),
                title: Text(
                  context.tr.generic_gallery,
                  style: context.tht.titleMedium,
                ),
                onTap: () => onImageSourceSelected(ImageSource.gallery),
              ),
              ListTile(
                leading: Icon(
                  Icons.photo_camera,
                  size: AppDimensions.d28,
                  color: context.thc.primary,
                ),
                title: Text(
                  context.tr.generic_camera,
                  style: context.tht.titleMedium,
                ),
                onTap: () => onImageSourceSelected(ImageSource.camera),
              ),
            ],
          ),
        );
      },
    );
  }
}
