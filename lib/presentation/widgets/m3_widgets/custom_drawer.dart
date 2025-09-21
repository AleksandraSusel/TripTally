import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/presentation/pages/bloc/app_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: AppDimensions.d180,
            child: DrawerHeader(
              child: Text(
                context.tr.appName,
                style: context.tht.headlineLarge,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: Text(context.tr.drawer_messages),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: Text(context.tr.userProfilePage_yourProfile),
            onTap: () => context.router.push(
              const UserProfileRoute(),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(context.tr.drawer_settings),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text(context.tr.drawer_logout),
            onTap: () => _showLogoutDialog(context),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          title: context.tr.drawer_logoutDialogTitle,
          info: context.tr.drawer_logoutDialogMessage,
          actionButtonText: context.tr.drawer_logoutDialogConfirm,
          abortButtonText: context.tr.drawer_logoutDialogCancel,
          onConfirmPressed: () {
            Navigator.of(context).pop();
            context.read<AppBloc>().add(const OnLogoutEvent());
          },
        );
      },
    );
  }
}
