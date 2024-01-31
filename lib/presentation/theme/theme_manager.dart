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
      displayMedium: TextStyle(fontSize: AppDimensions.d24, color: AppColors.cello, fontWeight: FontWeight.w700),
      displaySmall: TextStyle(fontSize: AppDimensions.d14, color: AppColors.cello, fontWeight: FontWeight.w400),
      labelSmall: TextStyle(fontSize: AppDimensions.d12, color: AppColors.cello, fontWeight: FontWeight.w400),
      labelMedium: TextStyle(fontSize: AppDimensions.d20, color: AppColors.cello, fontWeight: FontWeight.w700),
      headlineLarge: TextStyle(fontSize: AppDimensions.d40, color: AppColors.kobi, fontWeight: FontWeight.w800),
      headlineMedium: TextStyle(fontSize: AppDimensions.d24, color: AppColors.kobi, fontWeight: FontWeight.w700),
      headlineSmall: TextStyle(fontSize: AppDimensions.d14, color: AppColors.kobi, fontWeight: FontWeight.w400),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.cello, width: 2),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.kobi, width: 2),
      ),
      labelStyle: TextStyle(
        fontSize: AppDimensions.d14,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: TextStyle(
        fontSize: AppDimensions.d12,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.cello,
        textStyle: const TextStyle(fontSize: AppDimensions.d20, color: AppColors.cello, fontWeight: FontWeight.w700),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.wePeep,
      splashColor: AppColors.white,
      elevation: AppDimensions.d16,
      hoverColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppDimensions.d20),
        ),
      ),
    ),
  );

  ThemeData getTheme() => _themeData;
}
