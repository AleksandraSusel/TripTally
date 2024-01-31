import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

import 'app_colors.dart';

@singleton
class ThemeManager {
  final _themeData = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.linkWater,
    primaryColor: AppColors.cello,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: AppDimensions.d40, color: AppColors.cello, fontWeight: FontWeight.w800),
      displayMedium: TextStyle(fontSize: AppDimensions.d30, color: AppColors.cello, fontWeight: FontWeight.w400),
      displaySmall: TextStyle(fontSize: AppDimensions.d14, color: AppColors.cello, fontWeight: FontWeight.w300),
      headlineLarge: TextStyle(fontSize: AppDimensions.d40, color: AppColors.kobi, fontWeight: FontWeight.w800),
      headlineMedium: TextStyle(fontSize: AppDimensions.d30, color: AppColors.kobi, fontWeight: FontWeight.w400),
      headlineSmall: TextStyle(fontSize: AppDimensions.d20, color: AppColors.kobi, fontWeight: FontWeight.w300),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.cello,
        textStyle: const TextStyle(fontFamily: 'nutino', fontSize: AppDimensions.d30),
      ),
    ),
  );

  ThemeData getTheme() => _themeData;
}
