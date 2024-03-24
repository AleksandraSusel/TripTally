import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_dimensions.dart';
import '../theme/app_paths.dart';

class HiTravellerSubtitle extends StatelessWidget {
  const HiTravellerSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.tr.hiTravellerSubtitle_addNewJourney,
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
