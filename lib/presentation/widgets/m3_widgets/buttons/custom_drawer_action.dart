import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/svg_asset.dart';

class CustomDrawerAction extends StatelessWidget {
  const CustomDrawerAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(right: 16),
      icon: SvgAsset(
        AppPaths.menu,
        color: context.thc.onSurface,
        height: AppDimensions.d38,
      ),
      onPressed: () => Scaffold.of(context).openEndDrawer(),
    );
  }
}
