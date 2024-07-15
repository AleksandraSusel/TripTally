import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.d16,
          vertical: AppDimensions.d12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.d8),
        ),
        elevation: AppDimensions.d3,
      ),
      child: Row(
        children: [
          Image.asset(
            AppPaths.googleLogo,
            height: AppDimensions.d24,
            width: AppDimensions.d24,
          ),
          const SizedBox(width: AppDimensions.d16),
          Flexible(
            child: Text(
              text,
              style: context.tht.labelMedium?.copyWith(
                fontSize: AppDimensions.d18,
                color: AppColors.black.withOpacity(0.54),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
