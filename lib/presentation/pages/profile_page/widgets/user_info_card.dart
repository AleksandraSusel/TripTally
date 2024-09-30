import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({
    required this.username,
    required this.userPhoto,
    this.isEditMode = false,
    super.key,
  });

  final String username;
  final String userPhoto;
  final bool isEditMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isEditMode == true)
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: AppDimensions.d50,
                backgroundImage: AssetImage(userPhoto), //TODO: NetworkImage
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {}, //TODO: In this place should be a function to change userPhoto
                  child: CircleAvatar(
                    radius: AppDimensions.d16,
                    backgroundColor: context.thc.primaryContainer,
                    child: SvgAsset(
                      AppPaths.plusOutline,
                      color: context.thc.primary,
                    ),
                  ),
                ),
              ),
            ],
          )
        else
          CircleAvatar(
            radius: AppDimensions.d50,
            backgroundImage: AssetImage(userPhoto),
          ),
        const SizedBox(height: AppDimensions.d10),
        Center(
          child: Text(
            username,
            style: context.tht.labelSmall,
          ),
        ),
      ],
    );
  }
}
