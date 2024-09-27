import 'package:flutter/material.dart';
import 'package:trip_tally/domain/entities/location/location_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
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
    this.isExpanded = false,
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
  final bool isExpanded;

  @override
  ExpandableInfoCardState createState() => ExpandableInfoCardState();
}

class ExpandableInfoCardState extends State<ExpandableInfoCard> {
  late bool _isExpanded;

  @override
  void initState() {
    _isExpanded = widget.isExpanded;
    super.initState();
  }

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
          entity: TripEntity(
            id: '123',
            status: 'planned',
            location: LocationEntity(
              id: 'loc123',
              userId: 'user123',
              countryCode: 'US',
              cityName: 'New York',
              insertedAt: DateTime(2024),
              updatedAt: DateTime(2024),
            ),
            userId: 'user123',
            dateFrom: '2024-10-29',
            dateTo: '2024-10-30',
            expenses: [],
            transportType: 'Airplane',
            plannedCost: const PriceEntity(currency: 'USD', amount: '1200.57'),
            insertedAt: DateTime(2024),
            updatedAt: DateTime(2024),
          ),
          totalExpensesAmount: widget.totalExpensesAmount,
          imagePath: widget.imagePath,
        ),
        crossFadeState: _isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 300),
      ),
    );
  }
}
