import 'package:flutter/material.dart';

import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/widgets/app_bar_rounded_button.dart';

class PersonButton extends StatelessWidget {
  const PersonButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppBarRoundedButton(
      svgPicture: AppPaths.person,
    );
  }
}
