import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/settings_tile.dart';

import '../../theme/app_paths.dart';
import '../../widgets/circle_svg_button.dart';
import '../../widgets/hi_traveller_title_widget.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: [
        CustomSvgButton(
          svgPath: AppPaths.arrowBack,
          onTap: () {},
        ),
        const Spacer(),
        CustomSvgButton(
          svgPath: AppPaths.callendar,
          onTap: () {},
        ),
        CustomSvgButton(
          svgPath: AppPaths.package,
          onTap: () {},
        ),
        CustomSvgButton(
          svgPath: AppPaths.person,
          onTap: () {},
        ),
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
                    SettingsTale(
                      svgPath: AppPaths.history,
                      onTap: () {},
                      text: context.tr.settingsPage_HistoryOfYourTrips,
                    ),
                    SettingsTale(
                      svgPath: AppPaths.email,
                      onTap: () {},
                      text: context.tr.settingsPage_ChangeYourEmail,
                    ),
                    SettingsTale(
                      svgPath: AppPaths.lock,
                      onTap: () {},
                      text: context.tr.settingsPage_ChangeYourPassword,
                    ),
                    SettingsTale(
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
