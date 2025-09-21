import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class RectangularCountryFlag extends StatelessWidget {
  const RectangularCountryFlag({
    required this.countryCode,
    super.key,
  });

  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return CountryFlag.fromCountryCode(
      countryCode,
      theme: const ImageTheme(
        shape: RoundedRectangle(2.5),
        height: AppDimensions.d20,
        width: AppDimensions.d26,
      ),
    );
  }
}
