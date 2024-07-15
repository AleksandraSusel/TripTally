import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_bloc.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_event.dart';
import 'package:trip_tally/presentation/pages/add_expenses_page/bloc/add_expenses_state.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
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
class AddExpensesPage extends StatelessWidget {
  const AddExpensesPage({
    super.key,
    @visibleForTesting this.bloc,
  });

  final AddExpensesBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc ?? getIt<AddExpensesBloc>(),
      child: BlocConsumer<AddExpensesBloc, AddExpensesState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: () => customSnackBar(context, 'Success', color: AppColors.wePeep),
        ),
        builder: (context, state) => state.maybeWhen(
          orElse: SizedBox.shrink,
          success: _Body.new,
          initial: _Body.new,
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({
    super.key,
  });

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final nameOfExpense = TextEditingController();
  final amount = TextEditingController();
  int iconIndex = 1;

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
                      controller: nameOfExpense,
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
                        controller: amount,
                        svgPath: AppPaths.plus,
                        hintText: context.tr.planExpensesPage_howMuch,
                        onPressed: () {
                          final String text = amount.text;

                          final double value = double.tryParse(text) ?? 0;

                          context.read<AddExpensesBloc>().add(
                                AddExpenseEvent(
                                  name: nameOfExpense.text,
                                  date: DateTime.now().toString(),
                                  amount: value,
                                  currency: 'USD',
                                  tripId: '9690386d-e0b5-46e5-98a1-a9cf5fb53f70',
                                  userId: '9ce6c7bf-c848-4633-9154-875223b345a1',
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
