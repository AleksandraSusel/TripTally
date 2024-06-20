import 'package:flutter/cupertino.dart';

import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/widgets/hi_traveller_subtitle.dart';
import 'package:trip_tally/presentation/widgets/hi_traveller_text.dart';

class HiTravellerTitleWidget extends StatelessWidget {
  const HiTravellerTitleWidget({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HiTravellerText(),
        const SizedBox(height: AppDimensions.d40),
        HiTravellerSubtitle(
          text: text,
        ),
        const SizedBox(height: AppDimensions.d80),
      ],
    );
  }
}
