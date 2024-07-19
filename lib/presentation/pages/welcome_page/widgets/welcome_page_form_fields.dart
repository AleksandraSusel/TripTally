import 'package:country_picker/country_picker.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:world_countries/world_countries.dart' as wc;

class WelcomePageFormFields extends StatefulWidget {
  const WelcomePageFormFields({super.key});

  @override
  State<WelcomePageFormFields> createState() => _WelcomePageFormFieldsState();
}

class _WelcomePageFormFieldsState extends State<WelcomePageFormFields> {
  late final TextEditingController _nameController;
  late final TextEditingController _countryController;
  late final TextEditingController _currencyController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _countryController = TextEditingController();
    _currencyController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDimensions.d30),
      child: Column(
        children: [
          CustomTextField(
            textCapitalization: TextCapitalization.words,
            labelText: context.tr.welcomePage_nameFieldHint,
            controller: _nameController,
            validator: (String? value) {
              return Validator.isFieldEmpty(
                value: value,
                context: context,
                customError: context.tr.welcomePage_nameFieldError,
              );
            },
          ),
          const SizedBox(height: AppDimensions.d30),
          CustomTextField(
            readOnly: true,
            controller: _countryController,
            suffixIcon: const Icon(Icons.arrow_drop_down),
            onTap: _countryOnTap,
            labelText: context.tr.welcomePage_countryFieldHint,
            validator: (String? value) {
              return Validator.isFieldEmpty(
                value: value,
                context: context,
                customError: context.tr.welcomePage_countryFieldError,
              );
            },
          ),
          const SizedBox(height: AppDimensions.d30),
          CustomTextField(
            readOnly: true,
            controller: _currencyController,
            suffixIcon: const Icon(Icons.arrow_drop_down),
            onTap: _currencyOnTap,
            labelText: context.tr.welcomePage_currencyFieldHint,
            validator: (String? value) {
              return Validator.isFieldEmpty(
                context: context,
                value: value,
                customError: context.tr.welcomePage_currencyFieldError,
              );
            },
          ),
        ],
      ).animate().fadeIn(delay: 1.2.seconds, duration: 600.ms),
    );
  }

  void _updateCurrency(String countryCode) {
    final fiatCurrency = wc.WorldCountry.maybeFromCodeShort(countryCode)?.currencies?.first;
    final currency = fiatCurrency?.name;
    final symbol = fiatCurrency?.symbol;

    if (currency != null && symbol != null) {
      setState(() {
        _currencyController.text = '$currency($symbol)';
      });
    }
  }

  void _currencyOnTap() => showCurrencyPicker(
        theme: CurrencyPickerThemeData(
          titleTextStyle: context.tht.labelLarge?.copyWith(
            fontSize: AppDimensions.d18,
          ),
          subtitleTextStyle: context.tht.titleSmall?.copyWith(
            color: context.thc.primary,
          ),
        ),
        context: context,
        onSelect: (Currency currency) {
          setState(() {
            _currencyController.text = '${currency.name}(${currency.symbol})';
          });
        },
      );

  void _countryOnTap() => showCountryPicker(
        countryListTheme: CountryListThemeData(
          backgroundColor: context.thc.surface,
          textStyle: context.tht.titleMedium,
        ),
        context: context,
        onSelect: (Country country) {
          setState(() {
            _countryController.text = country.name;
            _updateCurrency(country.countryCode);
          });
        },
      );

  @override
  void dispose() {
    _countryController.dispose();
    _currencyController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
