import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/theme_manager.dart';

class CustomRectangleButton extends StatefulWidget {
  const CustomRectangleButton({
    super.key,
    required this.icon,
    this.text,
    required this.onTap,
    required this.iconHeight,
    required this.iconWidth,
    required this.containerHeight,
    required this.containerWidth,
  });

  final String icon;
  final VoidCallback onTap;
  final String? text;
  final double iconHeight;
  final double containerHeight;
  final double iconWidth;
  final double containerWidth;

  @override
  State<CustomRectangleButton> createState() => _CustomRectangleButtonState();
}

class _CustomRectangleButtonState extends State<CustomRectangleButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: widget.containerWidth,
          height: widget.containerHeight,
          decoration: ThemeManager().sideShadow,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _isSelected = !_isSelected;
              });
              widget.onTap();
            },
            style: _isSelected ? ThemeManager().rectangleButtonStyleSelected : ThemeManager().rectangleButtonStyleUnselected,
            child: SvgPicture.asset(
              widget.icon,
              height: widget.iconHeight,
              width: widget.iconWidth,
            ),
          ),
        ),
        if (widget.text != null)
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(AppDimensions.d8),
              child: Text(
                widget.text!,
                style: context.tht.labelSmall,
              ),
            ),
          ),
      ],
    );
  }
}
