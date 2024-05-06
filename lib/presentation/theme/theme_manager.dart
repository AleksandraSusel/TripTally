import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

import 'app_colors.dart';

@singleton
class ThemeManager {
  static const _fontName = 'NunitoSans';

  final _themeData = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.wePeep,
      onPrimary: AppColors.black,
      surface: AppColors.linkWater,
      onSurface: AppColors.cello,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.linkWater,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d20),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll<Color>(AppColors.wePeep),
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
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.05,
      ),
      headlineSmall: TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d14,
        color: AppColors.cello,
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
        color: AppColors.red,
        fontWeight: FontWeight.w100,
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
      backgroundColor: AppColors.linkWater,
      splashColor: AppColors.wePeep,
      elevation: AppDimensions.d14,
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

  ButtonStyle get rectangleButtonStyleUnselected => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.cello),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d20),
          ),
        ),
      );

  ButtonStyle get rectangleButtonStyleSelected => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.wePeep),
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.wePeep),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d20),
          ),
        ),
      );

  InputDecoration suffixIconTextField({required String hintText, required String suffixIcon}) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: SvgPicture.asset(fit: BoxFit.scaleDown, suffixIcon),
      hintStyle: const TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d14,
        color: AppColors.poloBlue,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.05,
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          width: AppDimensions.d2,
          color: AppColors.cello,
        ),
      ),
    );
  }

  InputDecoration iconButtonTextField({
    required String hintText,
    required String suffixIcon,
    required VoidCallback onPressed,
  }) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: IconButton(
        icon: SvgPicture.asset(fit: BoxFit.scaleDown, suffixIcon),
        onPressed: onPressed,
      ),
      hintStyle: const TextStyle(
        fontFamily: _fontName,
        fontSize: AppDimensions.d14,
        color: AppColors.poloBlue,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.05,
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          width: AppDimensions.d2,
          color: AppColors.cello,
        ),
      ),
    );
  }

  ThemeData getTheme() => _themeData;
}
