import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

import '../theme/app_dimensions.dart';

class CurrentTripInformation extends StatelessWidget {
  const CurrentTripInformation({super.key, required this.country, required this.countryCode});

  final String country;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: Text(
            context.tr.currentTripInformation_youAreIn,
            style: context.tht.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: Text(country, style: context.tht.titleLarge),
        ),
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: SizedBox(
            child: CountryFlag.fromCountryCode(
              countryCode,
              height: AppDimensions.d26,
              width: AppDimensions.d44,
            ),
          ),
        ),
      ],
    );
  }
}
