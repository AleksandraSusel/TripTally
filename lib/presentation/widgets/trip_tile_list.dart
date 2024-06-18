import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/widgets/trip_tile.dart';

class TripTileList extends StatelessWidget {
  const TripTileList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TripTile(
          city: 'Germany',
          expense: '300',
          date: '3.03-10.02.2023',
        ),
        TripTile(
          city: 'Crotia',
          expense: '1000',
          date: '5.03-03.08.2023',
        ),
        TripTile(
          city: 'Crotia',
          expense: '1000',
          date: '5.03-03.08.2023',
        ),
        TripTile(
          city: 'Crotia',
          expense: '1000',
          date: '5.03-03.08.2023',
        ),
      ],
    );
  }
}
