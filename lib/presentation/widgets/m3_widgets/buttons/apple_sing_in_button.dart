import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        elevation: AppDimensions.d3,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: AppDimensions.d4),
            child: Image.asset(
              AppPaths.appleLogo,
              height: AppDimensions.d24,
              width: AppDimensions.d24,
            ),
          ),
          const SizedBox(width: AppDimensions.d16),
          Flexible(
            child: Text(
              context.tr.authPage_singInApple,
              style: context.tht.labelMedium?.copyWith(
                fontSize: AppDimensions.d18,
                color: AppColors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
