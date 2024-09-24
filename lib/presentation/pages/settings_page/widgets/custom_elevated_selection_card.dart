import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/keys/widgets_keys.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_selection_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';

class CustomElevatedSelectionCard extends StatelessWidget {
  const CustomElevatedSelectionCard({
    required this.subtitle,
    required this.cardTitle,
    required this.iconAsset,
    required this.iconBGColor,
    required this.withTextField,
    required this.dialogTitle,
    required this.isWarningAction,
    required this.actionButtonText,
    super.key,
    this.infoInDialog,
  });

  final String subtitle;
  final String cardTitle;
  final String dialogTitle;
  final String iconAsset;
  final String actionButtonText;
  final String? infoInDialog;
  final Color iconBGColor;
  final bool withTextField;
  final bool isWarningAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d8),
      child: GestureDetector(
        onTap: () => showDialog<void>(
          context: context,
          builder: (ctx) => CustomAlertDialog(
            abortButtonText: context.tr.generic_cancel,
            title: dialogTitle,
            info: infoInDialog,
            actionButtonText: actionButtonText,
            onConfirmPressed: () {},
            withTextField: withTextField,
            isWarningAction: isWarningAction,
          ),
        ),
        child: ElevatedSelectionCard(
          key: WidgetsKeys.elevatedTripCardDeleteButton,
          title: cardTitle,
          subtitle: subtitle,
          iconBGColor: iconBGColor,
          iconAsset: iconAsset,
        ),
      ),
    );
  }
}
