import 'package:flutter/material.dart';

import '../theme/app_dimensions.dart';
import 'custom_icon_button.dart';

class ExpensesIconList extends StatelessWidget {
  const ExpensesIconList({super.key, required this.icon});

  final List<String> icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.d60,
      width: AppDimensions.d400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: icon.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            left: AppDimensions.d8,
            right: AppDimensions.d8,
          ),
          child: CustomIconButton(
            icon: icon[index],
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
