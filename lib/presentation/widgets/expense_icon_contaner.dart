import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_dimensions.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({
    super.key,
    required this.svgPath,
    required this.name,
    required this.quantity,
  });

  final String svgPath;
  final String name;
  final double quantity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d8),
      child: Column(
        children: [
          SizedBox(
            width: AppDimensions.d100,
            height: AppDimensions.d30,
            child: SvgPicture.asset(
              svgPath,
              height: AppDimensions.d20,
              width: AppDimensions.d20,
            ),
          ),
          Text(name),
          Text('$quantity'),
        ],
      ),
    );
  }
}
