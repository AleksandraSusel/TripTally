import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

class CurrencyTextField extends StatefulWidget {
  const CurrencyTextField({
    required this.controller,
    required this.labelText,
    required this.errorText,
    super.key,
  });

  final TextEditingController controller;
  final String labelText;
  final String errorText;

  @override
  State<CurrencyTextField> createState() => _CurrencyTextFieldState();
}

class _CurrencyTextFieldState extends State<CurrencyTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      readOnly: true,
      controller: widget.controller,
      suffixIcon: const Icon(Icons.arrow_drop_down),
      onTap: _currencyOnTap,
      labelText: widget.labelText,
      validator: (String? value) {
        return Validator.isFieldEmpty(
          context: context,
          value: value,
          customError: widget.errorText,
        );
      },
    );
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
            widget.controller.text = '${currency.code}(${currency.symbol})';
          });
        },
      );
}
