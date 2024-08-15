import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/country_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/currency_text_field.dart';

class WelcomePageFormFields extends StatelessWidget {
  const WelcomePageFormFields({
    required this.nameController,
    required this.countryController,
    required this.currencyController,
    super.key,
  });

  final TextEditingController nameController;
  final TextEditingController countryController;
  final TextEditingController currencyController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimensions.d30),
      child: Column(
        children: [
          CustomTextField(
            textCapitalization: TextCapitalization.words,
            labelText: context.tr.welcomePage_nameFieldHint,
            controller: nameController,
            validator: (String? value) {
              return Validator.isFieldEmpty(
                value: value,
                context: context,
                customError: context.tr.welcomePage_nameFieldError,
              );
            },
          ),
          const SizedBox(height: AppDimensions.d30),
          CountryTextField(
            controller: countryController,
            onSelected: (country) => currencyController.text = MoneyFormat.countryCodeCurrency(country.countryCode),
          ),
          const SizedBox(height: AppDimensions.d30),
          CurrencyTextField(
            controller: currencyController,
            labelText: context.tr.welcomePage_currencyFieldHint,
            errorText: context.tr.welcomePage_currencyFieldError,
          ),
        ],
      ).animate().fadeIn(delay: 1.2.seconds, duration: 600.ms),
    );
  }
}
