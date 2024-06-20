import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_dimensions.dart';
import '../theme/theme_manager.dart';

class CustomIconButton extends StatefulWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final String icon;
  final VoidCallback onPressed;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: _isSelected ? ThemeManager().rectangleButtonStyleSelected : ThemeManager().rectangleButtonStyleUnselected,
      icon: SvgPicture.asset(
        widget.icon,
      ),
      onPressed: () {
        widget.onPressed();
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      iconSize: AppDimensions.d30,
    );
  }
}
