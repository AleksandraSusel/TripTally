import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class OutlinedTripCard extends StatelessWidget {
  const OutlinedTripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.shadow,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.d12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppDimensions.d12),
            ),
            child: Image.asset(AppPaths.italy),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDimensions.d16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Country',
                      style: context.tht.labelLarge,
                    ),
                    Text(
                      '2024.10.12 - 2024.10.20',
                      style: context.tht.titleSmall,
                    ),
                    Row(
                      children: [
                        Text(
                          'Transport type:',
                          style: context.tht.titleSmall,
                        ),
                        const SizedBox(width: AppDimensions.d10),
                        const Icon(Icons.car_crash_rounded),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Total expenses:',
                      style: context.tht.labelSmall,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: AppDimensions.d16),
                      height: 36,
                      width: 80,
                      decoration: ShapeDecoration(
                        color: context.thc.surfaceContainerHigh,
                        shape: const StadiumBorder(),
                        shadows: [
                          BoxShadow(
                            blurRadius: AppDimensions.d2,
                            offset: const Offset(AppDimensions.zero, AppDimensions.d1),
                            color: context.thc.shadow.withOpacity(0.3),
                          ),
                          BoxShadow(
                            blurRadius: AppDimensions.d3,
                            spreadRadius: AppDimensions.d1,
                            offset: const Offset(AppDimensions.zero, AppDimensions.d1),
                            color: context.thc.shadow.withOpacity(0.15),
                          ),
                        ],
                      ),
                      child: Text(
                        r'1300 $',
                        style: context.tht.displayMedium?.copyWith(
                          color: context.thc.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimensions.d24, vertical: AppDimensions.d10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.errorContainer,
                  ),
                  child: Text(
                    'End the trip',
                    style: context.tht.labelSmall?.copyWith(color: context.thc.onErrorContainer),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: Text(
                    'Add expense',
                    style: context.tht.labelSmall?.copyWith(color: context.thc.onPrimary),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
