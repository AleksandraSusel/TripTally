import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/app_bar_rounded_button.dart';

class PersonButton extends StatelessWidget {
  const PersonButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarRoundedButton(
      onPressed: () => context.router.push(
        const SettingsRoute(),
      ),
      svgPicture: AppPaths.person,
    );
  }
}
