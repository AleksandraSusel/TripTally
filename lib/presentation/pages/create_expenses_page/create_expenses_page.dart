import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/expenses/expense_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_event.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_state.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/widgets/add_expense_form.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/widgets/expense_border_container.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/widgets/expense_item.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/widgets/trip_details.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/double_floating_action_buttons.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:world_countries/world_countries.dart';

@RoutePage()
class CreateExpensesPage extends StatelessWidget {
  const CreateExpensesPage({
    required this.trip,
    super.key,
  });

  final TripEntity trip;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreateExpensesBloc>(),
      child: BlocListener<CreateExpensesBloc, CreateExpensesState>(
        listener: (context, state) => state.whenOrNull(
          success: () {
            showSnackBar(
              context,
              context.tr.createExpensesPage_successMessage(
                WorldCountry.maybeFromCodeShort(trip.location.countryCode)?.name.name ?? trip.location.cityName,
              ),
              type: SnackbarType.success,
            );
            return context.router.pushAndPopUntil(
              PlannedTripsRoute(),
              predicate: (route) => route.settings.name == HomeRoute.name,
            );
          },
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: NavigationAppBar(title: context.tr.createTripPage_titleBasicInfo),
          body: _Body(trip: trip),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({required this.trip});

  final TripEntity trip;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final List<ExpenseEntity> _expenses = [];
  final Set<int> _newItems = {};
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet(context);
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      barrierColor: context.thc.shadow.withValues(alpha: .1),
      backgroundColor: context.thc.surfaceContainerHighest,
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: AddExpenseForm(
            currency: widget.trip.plannedCost.currency,
            tripId: widget.trip.id,
            onAddExpense: (expense) {
              setState(() {
                _expenses.insert(0, expense);
                _newItems.add(0);
                _listKey.currentState?.insertItem(0);
              });
            },
          ),
        );
      },
    );
  }

  double get totalExpensesAmount {
    return _expenses.fold(
      0,
      (sum, item) => sum + double.parse(item.price.amount),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ExpenseBorderContainer(
              child: Column(
                children: [
                  TripDetails(
                    trip: widget.trip,
                    expensesAmount: totalExpensesAmount,
                  ),
                  Expanded(
                    child: AnimatedList(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      key: _listKey,
                      initialItemCount: _expenses.length,
                      itemBuilder: (context, index, animation) {
                        final expense = _expenses[index];
                        final isNew = _newItems.contains(index);

                        return SizeTransition(
                          sizeFactor: animation,
                          child: Animate(
                            key: GlobalKey(),
                            effects: [
                              if (isNew) FadeEffect(duration: 1000.ms),
                              if (isNew)
                                ColorEffect(
                                  delay: 600.ms,
                                  begin: context.thc.primaryContainer,
                                  end: context.thc.surface,
                                  duration: 1000.ms,
                                  blendMode: BlendMode.darken,
                                ),
                            ],
                            onComplete: (_) {
                              if (isNew) {
                                setState(() {
                                  _newItems.remove(index);
                                });
                              }
                            },
                            child: ExpenseItem(
                              expense: expense,
                              onDelete: () => _removeExpense(index),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppDimensions.d30),
          Align(
            alignment: Alignment.centerRight,
            child: DoubleFloatingActionButtons(
              padding: const EdgeInsets.only(right: AppDimensions.d16),
              trailingOnPressed: () => context.read<CreateExpensesBloc>()..add(CreateExpenseEvent(expenses: _expenses)),
              leadingOnPressed: () => _showBottomSheet(context),
              trailingActionText: context.tr.createExpensesPage_submitExpenses,
              leadingActionText: context.tr.createExpensesPage_addExpense,
              trailingActionIcon: AppPaths.doubleCheck,
              leadingActionIcon: AppPaths.plus,
            ).animate().scale(delay: 400.ms),
          ),
        ],
      ),
    );
  }

  void _removeExpense(int index) {
    final removedExpense = _expenses.removeAt(index);
    final removedItemKey = _listKey.currentState;

    setState(() {
      if (removedItemKey != null) {
        removedItemKey.removeItem(
          index,
          (context, animation) => SizeTransition(
            sizeFactor: animation,
            child: ExpenseItem(
              expense: removedExpense,
              onDelete: () {},
            ),
          ),
          duration: 300.ms,
        );

        _newItems.remove(index);
      }
    });
  }
}
