import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({
    required this.userName,
    required this.userPhoto,
    required this.isCircleButton,
    super.key,
  });

  final String userName;
  final String userPhoto;
  final bool isCircleButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isCircleButton == true)
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: AppDimensions.d50,
                backgroundImage: AssetImage(userPhoto),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: AppDimensions.d16,
                    backgroundColor: AppColorsLight.primaryContainer,
                    child: SvgAsset(
                      AppPaths.plusOutline,
                      color: AppColorsLight.primary,
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
            userName,
            style: context.tht.labelSmall,
          ),
        ),
      ],
    );
  }
}
