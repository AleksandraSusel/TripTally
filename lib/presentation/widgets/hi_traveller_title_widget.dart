import 'package:flutter/cupertino.dart';

import '../theme/app_dimensions.dart';
import 'hi_traveller_subtitle.dart';
import 'hi_traveller_text.dart';

class HiTravellerTitleWidget extends StatelessWidget {
  const HiTravellerTitleWidget({super.key, required this.text});

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
