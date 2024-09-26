import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/dropdown_search_button.dart';

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
    return BlocBuilder<GetExpenseCategoriesBloc, GetExpenseCategoriesState>(
      builder: (context, state) {
        return DropdownSearchButton<String>(
          items: state.maybeWhen(
            orElse: () => [],
            loaded: (entity) => entity.categories.map((category) => category.name).toList(),
          ),
          selectedItem: _selectedCategory,
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
          labelText: context.tr.createExpensesPage_category,
          helperText: context.tr.createExpensesPage_expenseCategory,
          searchLabelText: context.tr.generic_search,
        );
      },
    );
  }
}
