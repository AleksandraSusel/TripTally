import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/profile_page_trip_card.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';

class RowOfTripsWidget extends StatelessWidget {
  RowOfTripsWidget({super.key});

  final List<Map<String, String>> tripData = [
    {'localization': 'Greece', 'imgPath': AppPaths.malta},
    {'localization': 'Berlin', 'imgPath': AppPaths.italy},
    {'localization': 'Italy', 'imgPath': AppPaths.greece},
    {'localization': 'Greece', 'imgPath': AppPaths.berlin},
    {'localization': 'Greece', 'imgPath': AppPaths.malta},
    {'localization': 'Berlin', 'imgPath': AppPaths.italy},
    {'localization': 'Italy', 'imgPath': AppPaths.greece},
    {'localization': 'Greece', 'imgPath': AppPaths.italy},
    {'localization': 'Greece', 'imgPath': AppPaths.berlin},
    {'localization': 'Berlin', 'imgPath': AppPaths.italy},
    {'localization': 'Italy', 'imgPath': AppPaths.greece},
    {'localization': 'Greece', 'imgPath': AppPaths.italy},
    {'localization': 'Greece', 'imgPath': AppPaths.berlin},
    {'localization': 'Berlin', 'imgPath': AppPaths.italy},
    {'localization': 'Italy', 'imgPath': AppPaths.greece},
    {'localization': 'Greece', 'imgPath': AppPaths.italy},
    {'localization': 'Greece', 'imgPath': AppPaths.berlin},
    {'localization': 'Berlin', 'imgPath': AppPaths.italy},
    {'localization': 'Italy', 'imgPath': AppPaths.greece},
    {'localization': 'Greece', 'imgPath': AppPaths.italy},
    {'localization': 'Greece', 'imgPath': AppPaths.berlin},
    {'localization': 'Berlin', 'imgPath': AppPaths.italy},
    {'localization': 'Italy', 'imgPath': AppPaths.greece},
    {'localization': 'Greece', 'imgPath': AppPaths.italy},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d8),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppDimensions.d3,
          mainAxisSpacing: AppDimensions.d10,
        ),
        itemCount: tripData.length,
        itemBuilder: (context, index) {
          final trip = tripData[index];
          return ProfilePageTripCard(
            localization: trip['localization']!,
            imgPath: trip['imgPath']!,
          );
        },
      ),
    );
  }
}
