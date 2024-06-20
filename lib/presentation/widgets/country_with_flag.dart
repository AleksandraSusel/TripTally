import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CountryWithFlag extends StatelessWidget {
  const CountryWithFlag({
    required this.country,
    required this.countryCode,
    super.key,
  });

  final String country;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
