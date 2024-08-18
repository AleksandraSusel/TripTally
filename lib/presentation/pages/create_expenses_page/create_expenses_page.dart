import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_event.dart';
import 'package:trip_tally/presentation/pages/create_expenses_page/bloc/create_expenses_state.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/custom_circular_progress_indicator.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/expense_icon_contaner.dart';
import 'package:trip_tally/presentation/widgets/icon_button_text_field.dart';
import 'package:trip_tally/presentation/widgets/icon_list.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/suffix_icon_text_field.dart';

@RoutePage()
class CreateExpensesPage extends StatelessWidget {
  const CreateExpensesPage({
    super.key,
    @visibleForTesting this.bloc,
  });

  final CreateExpensesBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc ?? getIt<CreateExpensesBloc>(),
      child: BlocListener<CreateExpensesBloc, CreateExpensesState>(
        listener: (context, state) => state.whenOrNull(
          success: () => customSnackBar(context, 'Success'),
          loading: CustomCircularProgressIndicator.new,
        ),
        child: const _Body(),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final expenseNameController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: const [
        ArrowBackButton(),
        Spacer(),
        CalendarButton(),
        PackageButton(),
        PersonButton(),
      ],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(AppDimensions.d10),
                child: SizedBox(
                  height: AppDimensions.d200,
                  width: AppDimensions.d400,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 10,
                        children: [
                          ExpenseTile(
                            svgPath: AppPaths.airplane,
                            name: 'Fly tickets',
                            quantity: 1000.5,
                          ),
                          ExpenseTile(
                            svgPath: AppPaths.package,
                            name: 'backpack',
                            quantity: 300.54,
                          ),
                          ExpenseTile(
                            svgPath: AppPaths.car,
                            name: 'rent a car',
                            quantity: 270,
                          ),
                          ExpenseTile(
                            svgPath: AppPaths.cutlery,
                            name: 'restaurants',
                            quantity: 100.4,
                          ),
                          ExpenseTile(
                            svgPath: AppPaths.car,
                            name: 'taxi',
                            quantity: 305,
                          ),
                          ExpenseTile(
                            svgPath: AppPaths.cycle,
                            name: 'bicycle',
                            quantity: 104,
                          ),
                          ExpenseTile(
                            svgPath: AppPaths.person,
                            name: 'service',
                            quantity: 500.45,
                          ),
                          ExpenseTile(
                            svgPath: AppPaths.package,
                            name: 'backpack',
                            quantity: 300.54,
                          ),
                        ], //TODO: IT WILL BE AUTOMATICALLY CREATE A LIST
                      ),
                    ),
                  ),
                ),
              ),
              MainContainer(
                child: Column(
                  children: [
                    Text(
                      context.tr.addExpensesPage_addExpenses,
                      style: context.tht.headlineMedium,
                    ),
                    const SizedBox(height: AppDimensions.d10),
                    SuffixIconTextField(
                      controller: expenseNameController,
                      svgPath: AppPaths.editorPen,
                      hintText: context.tr.planExpensesPage_nameTheExpense,
                    ),
                    Text(
                      context.tr.planExpensesPage_choseIcon,
                      style: context.tht.headlineSmall,
                    ),
                    const SizedBox(height: AppDimensions.d20),
                    IconList(
                      onIconSelected: (value) {},
                    ),
                    SvgPicture.asset(AppPaths.dots),
                    const SizedBox(height: AppDimensions.d20),
                    SizedBox(
                      height: AppDimensions.d152,
                      child: IconButtonTextField(
                        controller: amountController,
                        svgPath: AppPaths.plus,
                        hintText: context.tr.planExpensesPage_howMuch,
                        onPressed: () {
                          final String text = amountController.text;

                          final double value = double.tryParse(text) ?? 0;

                          context.read<CreateExpensesBloc>().add(
                                CreateExpenseEvent(
                                  name: expenseNameController.text,
                                  date: DateTime.now().toString(),
                                  amount: value,
                                  currency: 'USD',
                                  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
                                ),
                              );
                        },
                      ),
                    ),
                    CustomElevatedButton(
                      onPressed: () {},
                      text: context.tr.planExpensesPage_safe,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
