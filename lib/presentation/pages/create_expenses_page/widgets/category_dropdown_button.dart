import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
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
    return BlocBuilder<GetExpenseCategoriesBloc, GetExpenseCategoriesState>(
      builder: (context, state) {
        return DropdownSearch<String>(
          key: GlobalKey(),
          items: state.maybeWhen(
            orElse: () => [],
            loaded: (entity) => entity.categories.map((category) => category.name).toList(),
          ),
          popupProps: PopupProps.dialog(
            showSearchBox: true,
            searchDelay: 0.ms,
            searchFieldProps: TextFieldProps(
              autofocus: true,
              decoration: InputDecoration(
                alignLabelWithHint: true,
                helperStyle: context.tht.titleSmall?.copyWith(
                  fontSize: AppDimensions.d12,
                  overflow: TextOverflow.ellipsis,
                ),
                labelStyle: context.tht.titleSmall,
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
                prefixIcon: Icon(
                  Icons.search,
                  color: context.thc.primary,
                  size: 24,
                ),
              ),
            ),
            scrollbarProps: ScrollbarProps(
              thumbColor: context.thc.primary,
              radius: const Radius.circular(AppDimensions.d6),
            ),
            dialogProps: DialogProps(
              backgroundColor: context.thc.surfaceContainerHighest,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppDimensions.d6),
                side: BorderSide(color: context.thc.primary, width: 0.4),
              ),
              insetPadding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.d16,
                  ) +
                  const EdgeInsets.only(
                    top: AppDimensions.d68,
                    bottom: AppDimensions.d16,
                  ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.d16,
                vertical: AppDimensions.d20,
              ),
            ),
            disabledItemFn: (item) => item == 'Item 3',
          ),
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              labelText: context.tr.createExpensesPage_category,
              labelStyle: context.tht.titleSmall,
              helperText: context.tr.createExpensesPage_expenseCategory,
              helperStyle: context.tht.titleSmall?.copyWith(
                fontSize: AppDimensions.d12,
                overflow: TextOverflow.ellipsis,
              ),
              floatingLabelStyle: context.tht.titleSmall?.copyWith(
                color: context.thc.primary,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.thc.onSurface,
                ),
              ),
            ),
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
        );
      },
    );
  }
}
