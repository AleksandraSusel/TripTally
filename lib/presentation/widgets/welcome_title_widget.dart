import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/widgets/welcome_subtitle.dart';
import 'package:trip_tally/presentation/widgets/welcome_text.dart';

import '../theme/app_dimensions.dart';

class WelcomeTittleWidget extends StatelessWidget {
  const WelcomeTittleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WelcomeText(),
        SizedBox(height: AppDimensions.d40),
        WelcomeSubtitle(),
        SizedBox(height: AppDimensions.d80),
      ],
    );
  }
}
