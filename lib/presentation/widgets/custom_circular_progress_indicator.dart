import 'package:flutter/material.dart';

import 'package:trip_tally/presentation/theme/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.kobi,
        backgroundColor: AppColors.cello,
      ),
    );
  }
}
