import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

import 'app_colors.dart';

@singleton
class ThemeManager {
  static const _fontName = 'NunitoSans';

  final _themeData = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.linkWater,
    primaryColor: AppColors.cello,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d35,
        color: AppColors.cello,
        fontWeight: FontWeight.w900,
        letterSpacing: 3,
      ),
      displayMedium: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d24,
        color: AppColors.cello,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.05,
      ),
      displaySmall: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d14,
        color: AppColors.cello,
        fontWeight: FontWeight.w100,
        letterSpacing: 2,
      ),
      labelSmall: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d12,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
      labelMedium: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d20,
        color: AppColors.cello,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.05,
      ),
      headlineLarge: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d35,
        color: AppColors.kobi,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.05,
      ),
      headlineMedium: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d24,
        color: AppColors.kobi,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.05,
      ),
      headlineSmall: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d14,
        color: AppColors.kobi,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.05,
      ),
      titleSmall: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d14,
        color: AppColors.cello,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.05,
      ),
      bodySmall: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d14,
        color: AppColors.kobi,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.05,
      ),
      titleMedium: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d24,
        color: AppColors.cello,
        fontWeight: FontWeight.w100,
        letterSpacing: 1.05,
      ),
      titleLarge: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d24,
        color: AppColors.cello,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.05,
      ),
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
        fontFamily: _fontName,
        fontSize: AppDimensions.d10,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.cello),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: AppDimensions.d20,
            fontWeight: FontWeight.w700,
            fontFamily: _fontName,
            letterSpacing: 2,
          ),
        ),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.wePeep,
      splashColor: AppColors.white,
      elevation: AppDimensions.d14,
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
