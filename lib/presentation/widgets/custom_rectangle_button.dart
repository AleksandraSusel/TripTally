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
    required this.height,
    required this.width,
  });

  final String icon;
  final VoidCallback onTap;
  final String? text;
  final double height;
  final double width;

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
          width: AppDimensions.d90,
          height: AppDimensions.d90,
          decoration: ThemeManager().sideShadow,
          child: ElevatedButton(
            onPressed: () {
              widget.onTap;
              setState(() {
                _isSelected = !_isSelected;
              });
            },
            style: _isSelected ? ThemeManager().rectangleButtonStyleSelected : ThemeManager().rectangleButtonStyleUnselected,
            child: SvgPicture.asset(
              widget.icon,
              height: widget.height,
              width: widget.width,
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
