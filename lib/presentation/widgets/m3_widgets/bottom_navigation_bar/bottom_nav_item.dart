import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_bar_icon.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_bar_label.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_items.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    required this.isSelected,
    required this.item,
    required this.onTap,
    super.key,
  });

  final bool isSelected;
  final BottomNavItems item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavBarIcon(asset: item.asset, isActive: isSelected),
          const SizedBox(height: AppDimensions.d4),
          BottomNavBarLabel(
            text: item.trText(context),
            isActive: isSelected,
          ),
        ],
      ),
    );
  }
}
