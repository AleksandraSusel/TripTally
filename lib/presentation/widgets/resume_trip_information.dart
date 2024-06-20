import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/money_rich_text.dart';

class ResumeTripInformation extends StatelessWidget {
  const ResumeTripInformation({
    required this.country,
    required this.data,
    super.key,
  });

  final String country;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: Text(
            country,
            style: context.tht.displayMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppDimensions.d8),
              child: Text(
                data,
                style: context.tht.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimensions.d8),
              child: SvgPicture.asset(AppPaths.car),
            ),
          ],
        ),
        const MoneyRichText(money: '300', currency: r'$'),
      ],
    );
  }
}
