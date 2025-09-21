import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/expenses/expense_categories_entity.dart';
import 'package:trip_tally/domain/entities/expenses/expense_category_entity.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
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
  ExpenseCategoryEntity? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetExpenseCategoriesBloc, BasicState<ExpenseCategoriesEntity>>(
      builder: (context, state) => DropdownSearchButton<ExpenseCategoryEntity>(
        dropdownKey: widget.key,
        items: (String filter, LoadProps? loadProps) async {
          return switch (state) {
            LoadedState(data: final data) => data.categories,
            _ => const [],
          };
        },
        selectedItem: _selectedCategory,
        itemAsString: (category) => category?.name ?? '',
        onChanged: (value) {
          setState(() {
            _selectedCategory = value;
          });

          if (_selectedCategory != null) {
            widget.onChanged(_selectedCategory!.id);
          }
        },
        validator: (value) => Validator.isFieldEmpty(
          context: context,
          value: value?.name,
        ),
        labelText: context.tr.createExpensesPage_category,
        helperText: context.tr.createExpensesPage_expenseCategory,
        searchLabelText: context.tr.generic_search,
      ),
    );
  }
}
