import 'package:flutter/material.dart';

import '../theme/app_paths.dart';
import 'app_bar_rounded_button.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppBarRoundedButton(
      svgPicture: AppPaths.arrowBack,
    );
  }
}
