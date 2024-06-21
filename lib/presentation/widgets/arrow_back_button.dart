import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/widgets/app_bar_rounded_button.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBarRoundedButton(
      onPressed: () => Navigator.pop(context),
      svgPicture: AppPaths.arrowBack,
    );
  }
}
