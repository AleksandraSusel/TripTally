import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/outlined_info_card.dart';

class ExpandableInfoCard extends StatefulWidget {
  const ExpandableInfoCard({
    required this.country,
    required this.dateFrom,
    required this.dateTo,
    required this.transportType,
    required this.totalExpensesAmount,
    required this.totalExpensesCurrency,
    required this.countryCode,
    required this.expectedBudgetCurrency,
    required this.expectedBudgetAmount,
    required this.imagePath,
    super.key,
  });

  final String country;
  final String dateFrom;
  final String dateTo;
  final TransportType transportType;
  final double totalExpensesAmount;
  final String totalExpensesCurrency;
  final String countryCode;
  final String expectedBudgetCurrency;
  final double expectedBudgetAmount;
  final String imagePath;

  @override
  ExpandableInfoCardState createState() => ExpandableInfoCardState();
}

class ExpandableInfoCardState extends State<ExpandableInfoCard> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpand,
      child: AnimatedCrossFade(
        firstChild: OutlinedInfoCard(
          country: widget.country,
          dateFrom: widget.dateFrom,
          dateTo: widget.dateTo,
          transportType: widget.transportType,
          totalExpensesAmount: widget.totalExpensesAmount,
          totalExpensesCurrency: widget.totalExpensesCurrency,
          countryCode: widget.countryCode,
        ),
        secondChild: ElevatedTripCard(
          country: widget.country,
          dateFrom: widget.dateFrom,
          dateTo: widget.dateTo,
          transportType: widget.transportType,
          totalExpensesAmount: widget.totalExpensesAmount,
          totalExpensesCurrency: widget.totalExpensesCurrency,
          countryCode: widget.countryCode,
          expectedBudgetAmount: widget.expectedBudgetAmount,
          expectedBudgetCurrency: widget.expectedBudgetCurrency,
          imagePath: widget.imagePath,
        ),
        crossFadeState: _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 300),
      ),
    );
  }
}
