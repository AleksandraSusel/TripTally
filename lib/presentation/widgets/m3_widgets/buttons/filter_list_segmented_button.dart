import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/expandable_info_card.dart';

class FilterListSegmentedButton extends StatefulWidget {
  const FilterListSegmentedButton({super.key});

  @override
  State<FilterListSegmentedButton> createState() => _FilterListSegmentedButtonState();
}

class _FilterListSegmentedButtonState extends State<FilterListSegmentedButton> {
  final List<Widget> _listOfElevatedTripCard = [
    const ExpandableInfoCard(
      country: 'Italy',
      dateFrom: '20-10-2024',
      dateTo: '26-10-2024',
      transportType: TransportType.flight,
      totalExpensesAmount: 6000,
      totalExpensesCurrency: r'$',
      imagePath: AppPaths.italy,
      expectedBudgetAmount: 2000,
      expectedBudgetCurrency: r'$',
      countryCode: 'IT',
    ),
    const ExpandableInfoCard(
      country: 'Grecce',
      dateFrom: '24-12-2024',
      dateTo: '28-12-2024',
      transportType: TransportType.car,
      totalExpensesAmount: 5400,
      totalExpensesCurrency: r'$',
      imagePath: AppPaths.italy,
      expectedBudgetAmount: 3000,
      expectedBudgetCurrency: r'$',
      countryCode: 'IT',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDimensions.d8),
            child: ToggleButtons(
              selectedColor: AppColorsLight.onSurface,
              selectedBorderColor: AppColorsLight.onSurface,
              onPressed: (int index) {},
              isSelected: const [true, false, false],
              borderRadius: const BorderRadius.all(Radius.circular(AppDimensions.d30)),
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppDimensions.d18),
                  child: Text(
                    context.tr.filterListSegmentedButton_mostExpensive,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppDimensions.d18),
                  child: Text(
                    context.tr.filterListSegmentedButton_longest,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppDimensions.d18),
                  child: Text(
                    context.tr.filterListSegmentedButton_longest,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d16),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: _listOfElevatedTripCard.length,
              itemBuilder: (context, index) => ExpandableInfoCard(
                isExpanded: index == 0,
                country: 'Italy',
                dateFrom: '20-10-2024',
                dateTo: '26-10-2024',
                transportType: TransportType.flight,
                totalExpensesAmount: 6000,
                totalExpensesCurrency: r'$',
                imagePath: AppPaths.italy,
                expectedBudgetAmount: 2000,
                expectedBudgetCurrency: r'$',
                countryCode: 'IT',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
