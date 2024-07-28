import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

class CountryTextField extends StatefulWidget {
  const CountryTextField({
    required this.controller,
    required this.onSelected,
    super.key,
  });

  final TextEditingController controller;
  final ValueSetter<Country> onSelected;

  @override
  State<CountryTextField> createState() => _CountryTextFieldState();
}

class _CountryTextFieldState extends State<CountryTextField> {
  @override
  Widget build(BuildContext context) => CustomTextField(
        readOnly: true,
        controller: widget.controller,
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
      );

  void _countryOnTap() => showCountryPicker(
        countryListTheme: CountryListThemeData(
          backgroundColor: context.thc.surface,
          textStyle: context.tht.titleMedium,
        ),
        context: context,
        onSelect: (Country country) {
          setState(() {
            widget.controller.text = country.name;
            widget.onSelected(country);
          });
        },
      );
}
