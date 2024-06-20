import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class MoneyRichText extends StatelessWidget {
  const MoneyRichText({
    required this.money,
    required this.currency,
    super.key,
  });

  final String money;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: money,
            style: context.tht.labelMedium,
          ),
          TextSpan(
            text: currency,
            style: context.tht.headlineMedium,
          ),
        ],
      ),
    );
  }
}
