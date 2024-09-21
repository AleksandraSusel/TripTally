import 'package:flutter/material.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/test_manager.dart';
import 'package:trip_tally/presentation/utils/validators.dart';

class CategoryDropdownButton extends StatefulWidget {
  const CategoryDropdownButton({required this.onChanged, super.key});

  final ValueSetter<String> onChanged;

  @override
  State<CategoryDropdownButton> createState() => _CategoryDropdownButtonState();
}

class _CategoryDropdownButtonState extends State<CategoryDropdownButton> {
  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      iconSize: 16,
      padding: EdgeInsets.zero,
      decoration: InputDecoration(
        labelStyle: context.tht.titleSmall,
        helperText: getIt<TestsManager>().duringTestExecution
            ? 'Expense Category'
            : context.tr.createExpensesPage_expenseCategory,
        helperStyle: context.tht.titleSmall?.copyWith(
          fontSize: AppDimensions.d12,
          overflow: TextOverflow.ellipsis,
        ),
        floatingLabelStyle: context.tht.titleSmall?.copyWith(
          color: context.thc.primary,
        ),
        isDense: true,
        errorStyle: context.tht.titleSmall?.copyWith(
          color: context.thc.error,
          fontSize: AppDimensions.d12,
        ),
        errorMaxLines: 2,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.thc.error,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: context.thc.onSurface,
          ),
        ),
        labelText: getIt<TestsManager>().duringTestExecution ? 'Category' : context.tr.createExpensesPage_category,
      ),
      value: _selectedCategory,
      items: const [
        DropdownMenuItem<String>(
          value: 'Food',
          child: Text('Food'),
        ),
        DropdownMenuItem<String>(
          value: 'Transport',
          child: Text('Transport'),
        ),
        DropdownMenuItem<String>(
          value: 'Accommodation',
          child: Text('Accommodation'),
        ),
        DropdownMenuItem<String>(
          value: 'Entertainment',
          child: Text('Entertainment'),
        ),
      ],
      onChanged: (value) {
        setState(() {
          _selectedCategory = value;
        });
        if (_selectedCategory != null) {
          widget.onChanged(_selectedCategory!);
        }
      },
      validator: (value) => Validator.isFieldEmpty(
        context: context,
        value: value,
      ),
    );
  }
}
