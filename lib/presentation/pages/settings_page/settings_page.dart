import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/hi_traveller_title_widget.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/settings_tile.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: const [
        ArrowBackButton(),
        Spacer(),
        CalendarButton(),
        PackageButton(),
        PersonButton(),
      ],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HiTravellerTitleWidget(
                text: context.tr.hiTravellerSubtitle_yourProfileSettings,
              ),
              MainContainer(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SettingsTile(
                      svgPath: AppPaths.history,
                      onTap: () => context.router.push(const PlannedTripsRoute()),
                      text: context.tr.settingsPage_HistoryOfYourTrips,
                    ),
                    SettingsTile(
                      svgPath: AppPaths.email,
                      onTap: () {},
                      text: context.tr.settingsPage_ChangeYourEmail,
                    ),
                    SettingsTile(
                      svgPath: AppPaths.lock,
                      onTap: () {},
                      text: context.tr.settingsPage_ChangeYourPassword,
                    ),
                    SettingsTile(
                      svgPath: AppPaths.bin,
                      onTap: () {},
                      text: context.tr.settingsPage_DeleteYourAccount,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
