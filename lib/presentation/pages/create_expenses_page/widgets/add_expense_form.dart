import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/get_expense_categories_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/widgets/category_dropdown_button.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/double_floating_action_buttons.dart';

class AddExpenseForm extends StatefulWidget {
  const AddExpenseForm({
    required this.currency,
    required this.onAddExpense,
    required this.tripId,
    super.key,
  });

  final String currency;
  final String tripId;
  final ValueSetter<ExpenseEntity> onAddExpense;

  @override
  State<AddExpenseForm> createState() => _AddExpenseFormState();
}

class _AddExpenseFormState extends State<AddExpenseForm> {
  late final TextEditingController _budgetController;
  late final TextEditingController _expenseNameController;
  late String _categoryId;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _expenseNameController = TextEditingController();
    _budgetController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d16) + const EdgeInsets.only(top: AppDimensions.d24),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    autofocus: true,
                    key: WidgetsKeys.addExpenseFormNameExpense,
                    controller: _expenseNameController,
                    labelText: context.tr.createExpensesPage_name,
                    helperText: context.tr.createExpensesPage_nameExpense,
                    validator: (value) => Validator.isFieldEmpty(
                      context: context,
                      value: value,
                    ),
                  ),
                ),
                const SizedBox(width: AppDimensions.d20),
                Flexible(
                  child: BlocProvider(
                    create: (context) => getIt<GetExpenseCategoriesBloc>()..add(const GetExpenseCategoriesEvent()),
                    child: CategoryDropdownButton(
                      key: WidgetsKeys.addExpenseFormCategoryExpense,
                      onChanged: (value) {
                        setState(() => _categoryId = value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.d16),
            Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    key: WidgetsKeys.addExpenseFormBudgetExpense,
                    controller: _budgetController,
                    textInputType: const TextInputType.numberWithOptions(decimal: true),
                    labelText: context.tr.createExpensesPage_budget,
                    helperText: context.tr.createExpensesPage_expenseCost,
                    validator: (value) => Validator.isFieldEmpty(
                      context: context,
                      value: value,
                    ),
                  ),
                ),
                const SizedBox(width: AppDimensions.d20),
                Flexible(
                  child: CustomTextField(
                    labelText: context.tr.createExpensesPage_currency,
                    helperText: context.tr.createExpensesPage_currency,
                    readOnly: true,
                    initialValue: widget.currency,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.d60),
            Align(
              alignment: Alignment.centerRight,
              child: DoubleFloatingActionButtons(
                leadingActionKey: WidgetsKeys.addExpenseFormAddExpenseButton,
                trailingOnPressed: () {
                  context.router.maybePop();
                },
                leadingOnPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    final expense = ExpenseEntity(
                      name: _expenseNameController.text,
                      date: DateTime.now().toYYMMDDFormat,
                      price: PriceEntity(
                        amount: _budgetController.text,
                        currency: widget.currency,
                      ),
                      tripId: widget.tripId,
                      categoryId: _categoryId,
                    );

                    widget.onAddExpense(expense);
                    _budgetController.clear();
                    _expenseNameController.clear();
                  }
                },
                trailingActionText: context.tr.createExpensesPage_finish,
                leadingActionText: context.tr.createExpensesPage_addExpenses,
                trailingActionIcon: AppPaths.doubleCheck,
                leadingActionIcon: AppPaths.plus,
              ).animate().slideX(begin: 1, delay: 100.ms),
            ),
            const SizedBox(height: AppDimensions.d16),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _expenseNameController.dispose();
    _budgetController.dispose();
    super.dispose();
  }
}
