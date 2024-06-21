import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class OrdinaryTitleWidget extends StatelessWidget {
  const OrdinaryTitleWidget({
    required this.titleText,
    super.key,
  });

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: context.tht.displayMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
