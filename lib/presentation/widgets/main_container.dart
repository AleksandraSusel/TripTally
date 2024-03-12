import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 430,
      height: 520,
      decoration: BoxDecoration(
        color: AppColors.linkWater,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: const Offset(2, 2),
            blurRadius: 9,
            spreadRadius: 10,
          ),
        ],
      ),
      child: child,
    );
  }
}
