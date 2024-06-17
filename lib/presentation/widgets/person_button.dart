import 'package:flutter/material.dart';

import '../theme/app_paths.dart';
import 'app_bar_rounded_button.dart';

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
