import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_paths.dart';

class WelcomeSubtitle extends StatelessWidget {
  const WelcomeSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.tr.welcomeSubtitle_theAppForReportingAllExpenses,
          style: context.tht.displaySmall,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.tr.welcomeSubtitle_whileTravelling,
              style: context.tht.displaySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: AppDimensions.d10),
            SvgPicture.asset(
              AppPaths.airplane,
              height: AppDimensions.d26,
            ),
          ],
        ),
      ],
    );
  }
}
