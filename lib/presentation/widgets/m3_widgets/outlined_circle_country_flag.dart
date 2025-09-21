import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class OutlinedCircleCountryFlag extends StatelessWidget {
  const OutlinedCircleCountryFlag({
    required this.countryCode,
    super.key,
  });

  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDimensions.d14),
      height: AppDimensions.d40,
      width: AppDimensions.d40,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(),
        shape: BoxShape.circle,
      ),
      child: CountryFlag.fromCountryCode(
        countryCode,
        theme: const ImageTheme(
          shape: Circle(),
        ),
      ),
    );
  }
}
