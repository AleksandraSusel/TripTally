import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/icon_button_text_field.dart';

import '../../theme/app_dimensions.dart';
import '../../theme/app_paths.dart';
import '../../utils/router/app_router.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/circle_svg_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/expanses_icon_list.dart';
import '../../widgets/expense_icon_contaner.dart';
import '../../widgets/main_container.dart';
import '../../widgets/suffix_icon_text_field.dart';

@RoutePage()
class PlanExpensesPage extends StatelessWidget {
  const PlanExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: [
        CustomSvgButton(
          svgPath: AppPaths.arrowBack,
          onTap: () => context.router.push(const HomeRoute()),
        ),
        const Spacer(),
        CustomSvgButton(
          svgPath: AppPaths.calendar,
          onTap: () {},
        ),
        CustomSvgButton(
          svgPath: AppPaths.package,
          onTap: () {},
        ),
        CustomSvgButton(
          svgPath: AppPaths.person,
          onTap: () {},
        ),
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
                      scrollDirection: Axis.vertical,
                      child: Wrap(
                        spacing: 10, direction: Axis.horizontal,
                        children: [
                          ExpenseIconContainer(
                            svgPath: AppPaths.airplane,
                            name: 'Fly tickets',
                            quantity: 1000.5,
                          ),
                          ExpenseIconContainer(
                            svgPath: AppPaths.package,
                            name: 'backpack',
                            quantity: 300.54,
                          ),
                          ExpenseIconContainer(
                            svgPath: AppPaths.car,
                            name: 'rent a car',
                            quantity: 270,
                          ),
                          ExpenseIconContainer(
                            svgPath: AppPaths.cutlery,
                            name: 'restaurants',
                            quantity: 100.4,
                          ),
                          ExpenseIconContainer(
                            svgPath: AppPaths.car,
                            name: 'taxi',
                            quantity: 305,
                          ),
                          ExpenseIconContainer(
                            svgPath: AppPaths.cycle,
                            name: 'bicycle',
                            quantity: 104,
                          ),
                          ExpenseIconContainer(
                            svgPath: AppPaths.person,
                            name: 'service',
                            quantity: 500.45,
                          ),
                          ExpenseIconContainer(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      context.tr.planExpensesPage_planExpenses,
                      style: context.tht.headlineMedium,
                    ),
                    const SizedBox(height: AppDimensions.d10),
                    SuffixIconTextField(
                      svgPath: AppPaths.editorPen,
                      hintText: context.tr.planExpensesPage_nameTheExpense,
                    ),
                    Text(
                      context.tr.planExpensesPage_choseIcon,
                      style: context.tht.headlineSmall,
                    ),
                    const SizedBox(height: AppDimensions.d20),
                    const ExpensesIconList(
                      icon: [
                        AppPaths.biggerAirplane,
                        AppPaths.cycle,
                        AppPaths.cutlery,
                        AppPaths.food,
                        AppPaths.hotel,
                        AppPaths.taxi,
                        AppPaths.ticket,
                        AppPaths.car,
                        AppPaths.bus,
                        AppPaths.ship,
                        AppPaths.car,
                        AppPaths.bus,
                        AppPaths.ship,
                      ],
                    ),
                    SvgPicture.asset(AppPaths.dots),
                    const SizedBox(height: AppDimensions.d20),
                    SizedBox(
                      height: AppDimensions.d152,
                      child: IconButtonTextField(
                        svgPath: AppPaths.plus,
                        hintText: context.tr.planExpensesPage_howMuch,
                        onPressed: () {},
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
