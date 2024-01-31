import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d10),
      child: SizedBox(
        width: AppDimensions.d300,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
