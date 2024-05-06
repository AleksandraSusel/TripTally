import 'package:flutter/cupertino.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

import '../theme/app_paths.dart';
import 'custom_icon_button.dart';

final transportIcons = [
  CustomIconButton(icon: AppPaths.biggerAirplane, onPressed: () {}),
  const SizedBox(width: AppDimensions.d20),
  CustomIconButton(icon: AppPaths.cycle, onPressed: () {}),
  const SizedBox(width: AppDimensions.d20),
  CustomIconButton(icon: AppPaths.car, onPressed: () {}),
  const SizedBox(width: AppDimensions.d20),
  CustomIconButton(icon: AppPaths.bus, onPressed: () {}),
  const SizedBox(width: AppDimensions.d20),
  CustomIconButton(icon: AppPaths.ship, onPressed: () {}),
];
