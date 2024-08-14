import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/expandable_info_card.dart';

List<Widget> listOfElevatedTripCard = [
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
