import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/primary_elevated_button.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    required this.reason,
    required this.onRetry,
    super.key,
  });

  final String reason;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.tr.errorWidget_title,
            style: context.tht.labelMedium?.copyWith(fontSize: AppDimensions.d20, color: context.thc.primary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.d8),
          Text(
            context.tr.errorWidget_subtitle(reason),
            style: context.tht.labelSmall?.copyWith(fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.d26),
          SizedBox(
            width: AppDimensions.d80,
            child: PrimaryElevatedButton(
              onPressed: onRetry,
              text: context.tr.errorWidget_button,
              fontSize: AppDimensions.d18,
            ),
          ),
        ],
      ),
    );
  }
}
