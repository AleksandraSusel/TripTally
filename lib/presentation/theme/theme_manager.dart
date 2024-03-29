import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

import 'app_colors.dart';

@singleton
class ThemeManager {
  static const _fontName = 'NunitoSans';

  final _themeData = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.linkWater,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent),
        surfaceTintColor: MaterialStatePropertyAll<Color>(Colors.transparent),
        overlayColor: MaterialStatePropertyAll<Color>(AppColors.wePeep),
      ),
    ),
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

  BoxDecoration get mainShadow => BoxDecoration(
        color: AppColors.linkWater,
        borderRadius: BorderRadius.circular(AppDimensions.d40),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: const Offset(2, 2),
            blurRadius: AppDimensions.d10,
            spreadRadius: AppDimensions.d10,
          ),
        ],
      );

  BoxDecoration get sideShadow => BoxDecoration(
        color: AppColors.linkWater,
        borderRadius: BorderRadius.circular(AppDimensions.d20),
        boxShadow: const [
          BoxShadow(
            color: AppColors.osloGray,
            offset: Offset(3, 2),
            blurRadius: AppDimensions.d5,
            spreadRadius: AppDimensions.d1,
          ),
          BoxShadow(
            color: AppColors.porcelain,
            offset: Offset(-1, -1),
            blurRadius: AppDimensions.d6,
            spreadRadius: AppDimensions.d4,
          ),
        ],
      );

  ButtonStyle get rectangleButtonStyle => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.cello),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d20),
          ),
        ),
      );

  ThemeData getTheme() => _themeData;
}
