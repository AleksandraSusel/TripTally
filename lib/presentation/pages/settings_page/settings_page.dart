import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/user_info_card_widget.dart';
import 'package:trip_tally/presentation/pages/settings_page/widgets/custom_elevated_selection_card.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(
        title: context.tr.settingsPage_settings,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: AppDimensions.d24),
            const UserInfoCardWidget(
              userName: 'Adrian Nowak',
              userPhoto: AppPaths.man,
              isCircleButton: true,
            ),
            const SizedBox(height: AppDimensions.d20),
            CustomElevatedSelectionCard(
              cardTitle: context.tr.settingsPage_changeYourName,
              subtitle: 'Adrian Nowak',
              iconBGColor: AppColorsLight.primaryContainer,
              iconAsset: AppPaths.editPen,
              withTextField: true,
              dialogTitle: context.tr.settingsPage_newName,
              isWarningAction: false,
              actionButtonText: context.tr.generic_confirm,
            ),
            CustomElevatedSelectionCard(
              cardTitle: context.tr.settingsPage_changeYourEmail,
              subtitle: context.tr.settingsPage_clickToSend,
              iconBGColor: AppColorsLight.primaryContainer,
              iconAsset: AppPaths.emailM3,
              infoInDialog: context.tr.settingsPage_informationInDialog,
              withTextField: false,
              dialogTitle: context.tr.settingsPage_areYouSure,
              isWarningAction: false,
              actionButtonText: context.tr.generic_confirm,
            ),
            CustomElevatedSelectionCard(
              cardTitle: context.tr.settingsPage_changeYourPassword,
              subtitle: context.tr.settingsPage_clickToSend,
              iconBGColor: AppColorsLight.primaryContainer,
              iconAsset: AppPaths.password,
              infoInDialog: context.tr.settingsPage_informationInDialog,
              withTextField: false,
              dialogTitle: context.tr.settingsPage_areYouSure,
              isWarningAction: false,
              actionButtonText: context.tr.generic_confirm,
            ),
            CustomElevatedSelectionCard(
              cardTitle: context.tr.settingsPage_deleteYourAccount,
              subtitle: context.tr.settingsPage_clickToDelete,
              iconBGColor: AppColorsLight.error,
              iconAsset: AppPaths.binM3,
              infoInDialog: context.tr.settingsPage_informationInDialogToDeleteAccount,
              withTextField: false,
              dialogTitle: context.tr.settingsPage_areYouSure,
              isWarningAction: true,
              actionButtonText: context.tr.generic_delete,
            ),
          ],
        ),
      ),
    );
  }
}
