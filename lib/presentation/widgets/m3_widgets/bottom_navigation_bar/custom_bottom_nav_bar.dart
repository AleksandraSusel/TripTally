import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_item.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/bottom_navigation_bar/bottom_nav_items.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    required this.onItemSelected,
    required this.initialIndex,
    required this.items,
    super.key,
  });

  final void Function(int, BottomNavItems) onItemSelected;
  final int initialIndex;
  final List<BottomNavItems> items;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  void _onItemTapped(int index, BottomNavItems item) {
    widget.onItemSelected(index, item);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorsLight.surface3,
        borderRadius: BorderRadius.circular(AppDimensions.d16),
        boxShadow: [
          BoxShadow(
            spreadRadius: -2,
            blurRadius: 2.5,
            offset: const Offset(0, 1),
            color: context.thc.onSurface,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: AppDimensions.d10),
      padding: const EdgeInsets.all(AppDimensions.d10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(widget.items.length, (index) {
          final item = widget.items[index];
          final isSelected = widget.initialIndex == index;

          return Expanded(
            child: BottomNavItem(
              isSelected: isSelected,
              item: item,
              onTap: () => _onItemTapped(index, item),
            ),
          );
        }),
      ),
    );
  }
}
