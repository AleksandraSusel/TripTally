import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class SelectedLocationIcon extends StatefulWidget {
  const SelectedLocationIcon({
    super.key,
  });

  @override
  State<SelectedLocationIcon> createState() => _SelectedLocationIconState();
}

class _SelectedLocationIconState extends State<SelectedLocationIcon> with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: 200.ms);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.location_on,
      color: AppColors.red,
      size: AppDimensions.d40,
    )
        .animate(
          controller: _animationController,
          onComplete: (cn) => cn.repeat(reverse: true),
        )
        .scale(
          begin: const Offset(0.8, 0.8),
          end: const Offset(1.3, 1.3),
          duration: 1.2.seconds,
          curve: Curves.easeInOut,
        );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
