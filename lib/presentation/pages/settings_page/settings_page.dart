import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/profile_page/widgets/user_info_card.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_selection_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/text_field_dialog.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late final TextEditingController _controller;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

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
            const UserInfoCard(
              username: 'Adrian Nowak', //TODO: username will be take from UserProfile model
              userPhoto: AppPaths.man,
              isEditMode: true,
            ),
            const SizedBox(height: AppDimensions.d20),
            ElevatedSelectionCard(
              paddingValue: 12,
              title: context.tr.settingsPage_changeYourName,
              subtitle: 'Adrian Nowak',
              iconBGColor: context.thc.primaryContainer,
              iconAsset: AppPaths.editPen,
              onTap: () => showDialog<void>(
                context: context,
                builder: (ctx) => Form(
                  key: _formKey,
                  child: TextFieldDialog(
                    abortButtonText: context.tr.generic_cancel,
                    title: context.tr.settingsPage_newName,
                    actionButtonText: context.tr.generic_confirm,
                    onConfirmPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        context.router.maybePop();
                      }
                    },
                    labelText: context.tr.settingsPage_changeYourName,
                    controller: _controller,
                  ),
                ),
              ),
            ),
            ElevatedSelectionCard(
              paddingValue: 12,
              title: context.tr.settingsPage_changeYourEmail,
              subtitle: context.tr.settingsPage_clickToSend,
              iconBGColor: context.thc.primaryContainer,
              iconAsset: AppPaths.emailM3,
              onTap: () => showDialog<void>(
                context: context,
                builder: (ctx) => CustomAlertDialog(
                  abortButtonText: context.tr.generic_cancel,
                  title: context.tr.settingsPage_areYouSure,
                  info: context.tr.settingsPage_informationInDialog,
                  actionButtonText: context.tr.generic_confirm,
                  onConfirmPressed: () {
                    context.router.maybePop();
                  },
                ),
              ),
            ),
            ElevatedSelectionCard(
              paddingValue: 12,
              title: context.tr.settingsPage_changeYourPassword,
              subtitle: context.tr.settingsPage_clickToSend,
              iconBGColor: context.thc.primaryContainer,
              iconAsset: AppPaths.password,
              onTap: () => showDialog<void>(
                context: context,
                builder: (ctx) => CustomAlertDialog(
                  abortButtonText: context.tr.generic_cancel,
                  title: context.tr.settingsPage_areYouSure,
                  info: context.tr.settingsPage_informationInDialog,
                  actionButtonText: context.tr.generic_confirm,
                  onConfirmPressed: () {
                    context.router.maybePop();
                  },
                ),
              ),
            ),
            ElevatedSelectionCard(
              paddingValue: 12,
              title: context.tr.settingsPage_deleteYourAccount,
              subtitle: context.tr.settingsPage_clickToSend,
              iconBGColor: context.thc.error,
              iconAsset: AppPaths.binM3,
              onTap: () => showDialog<void>(
                context: context,
                builder: (ctx) => CustomAlertDialog(
                  isWarningAction: true,
                  abortButtonText: context.tr.generic_cancel,
                  title: context.tr.settingsPage_areYouSure,
                  info: context.tr.settingsPage_informationInDialog,
                  actionButtonText: context.tr.generic_confirm,
                  onConfirmPressed: () {
                    context.router.maybePop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
