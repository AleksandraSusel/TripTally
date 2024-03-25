import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class HiTravellerText extends StatelessWidget {
  const HiTravellerText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: context.tr.hiTravellerText_hi,
            style: context.tht.headlineLarge,
          ),
          TextSpan(
            text: context.tr.hiTravellerText_traveller,
            style: context.tht.displayLarge,
          ),
        ],
      ),
    );
  }
}
