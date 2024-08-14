import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/expandable_info_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/list_of_elevated_info_cards.dart';

class FilterListSegmentedButton extends StatefulWidget {
  const FilterListSegmentedButton({super.key});

  @override
  State<FilterListSegmentedButton> createState() => _FilterListSegmentedButtonState();
}

class _FilterListSegmentedButtonState extends State<FilterListSegmentedButton> {
  List<bool> isSelected = [true, false, false];
  List<String> items = ['banana', 'apple', 'pomegranate'];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filterList();
  }

  void filterList() {
    setState(
      () {
        if (isSelected[0]) {
          filteredItems = items.where((item) => item.startsWith('A')).toList();
        } else if (isSelected[1]) {
          filteredItems = items.where((item) => item.startsWith('B')).toList();
        } else if (isSelected[2]) {
          filteredItems = items;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppDimensions.d8),
          child: ToggleButtons(
            selectedColor: AppColorsLight.onSurface,
            selectedBorderColor: AppColorsLight.onSurface,
            onPressed: (int index) {
              setState(
                () {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                },
              );
              filterList();
            },
            isSelected: isSelected,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(AppDimensions.d30),
              topLeft: Radius.circular(AppDimensions.d30),
              topRight: Radius.circular(AppDimensions.d30),
              bottomRight: Radius.circular(AppDimensions.d30),
            ),
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
          child: ListView.builder(
            itemCount: listOfElevatedTripCard.length,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(AppDimensions.d8),
                child: ExpandableInfoCard(
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
              );
            },
          ),
        ),
      ],
    );
  }
}
