import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: AppColors.kobi,
      backgroundColor: AppColors.cello,
    );
  }
}
