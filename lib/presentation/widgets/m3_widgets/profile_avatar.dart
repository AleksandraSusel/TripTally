import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    this.size = 1,
    super.key,
  });

  /// Multiplier for the avatar size. Default is 1, meaning original size. Increase or decrease to adjust the size proportionally.
  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: AppDimensions.d56 * size,
      width: AppDimensions.d56 * size,
      decoration: BoxDecoration(
        border: Border.all(width: 2.5),
        borderRadius: BorderRadius.circular(AppDimensions.d32),
      ),
      duration: 400.ms,
      curve: Curves.easeInOut,
      child: const CircleAvatar(
        foregroundImage: AssetImage(AppPaths.samplePerson),
      ),
    );
  }
}
