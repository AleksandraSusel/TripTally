import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: ThemeManager().mainShadow,
      height: AppDimensions.d580,
      child: child,
    );
  }
}
