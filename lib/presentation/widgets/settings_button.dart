import 'package:flutter/material.dart';

import '../theme/app_paths.dart';
import 'app_bar_rounded_button.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return const AppBarRoundedButton(
      svgPicture: AppPaths.settings,
    );
  }
}
