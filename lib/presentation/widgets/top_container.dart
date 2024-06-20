import 'package:flutter/cupertino.dart';

import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: ThemeManager().topContainerShadow,
      height: AppDimensions.d180,
      child: child,
    );
  }
}
