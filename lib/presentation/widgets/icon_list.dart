import 'package:flutter/material.dart';

import '../theme/app_dimensions.dart';

class IconList extends StatelessWidget {
  const IconList({super.key, required this.icons});

  final List<Widget> icons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.d60,
      width: AppDimensions.d400,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: icons,
          ),
        ),
      ),
    );
  }
}
