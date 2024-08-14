import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/currency_text_field.dart';

class BudgetFields extends StatelessWidget {
  const BudgetFields({
    required this.currencyController,
    required this.budgetController,
    super.key,
  });

  final TextEditingController currencyController;
  final TextEditingController budgetController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.d16,
        vertical: AppDimensions.d16,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              controller: budgetController,
              textInputType: TextInputType.number,
              labelText: context.tr.createTripBudgetHint,
              validator: (value) => Validator.isFieldEmpty(value: value, context: context),
            ),
          ),
          const SizedBox(width: AppDimensions.d20),
          Expanded(
            child: CurrencyTextField(
              controller: currencyController,
              labelText: context.tr.createTripPage_currencyLabel,
              errorText: context.tr.createTripPage_currencyError,
            ),
          ),
        ],
      ),
    );
  }
}
