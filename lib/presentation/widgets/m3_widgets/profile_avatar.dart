import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.d56,
      width: AppDimensions.d56,
      decoration: BoxDecoration(
        border: Border.all(width: 2.5),
        borderRadius: BorderRadius.circular(AppDimensions.d32),
      ),
      child: const CircleAvatar(
        foregroundImage: AssetImage(AppPaths.samplePerson),
      ),
    );
  }
}
