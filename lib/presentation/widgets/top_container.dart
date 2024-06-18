import 'package:flutter/cupertino.dart';

import '../theme/app_dimensions.dart';
import '../theme/theme_manager.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key, required this.child});

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
