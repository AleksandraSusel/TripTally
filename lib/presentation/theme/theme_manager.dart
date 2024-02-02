import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

import 'app_colors.dart';

@singleton
class ThemeManager {
  final _themeData = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.linkWater,
    primaryColor: AppColors.cello,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d35,
        color: AppColors.cello,
        fontWeight: FontWeight.w900,
        letterSpacing: 3,
      ),
      displayMedium: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d26,
        color: AppColors.cello,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.05,
      ),
      displaySmall: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d16,
        color: AppColors.cello,
        fontWeight: FontWeight.w300,
        letterSpacing: 2,
      ),
      labelSmall: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d12,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
      labelMedium: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d20,
        color: AppColors.cello,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.05,
      ),
      headlineLarge: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d40,
        color: AppColors.kobi,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.05,
      ),
      headlineMedium: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d24,
        color: AppColors.kobi,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.05,
      ),
      headlineSmall: GoogleFonts.nunitoSans(
        fontSize: AppDimensions.d14,
        color: AppColors.kobi,
        fontWeight: FontWeight.w400,
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
        fontFamily: 'nunito',
        fontSize: AppDimensions.d12,
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
            fontSize: AppDimensions.d22,
            fontWeight: FontWeight.w700,
            fontFamily: 'nunito',
            letterSpacing: 2,
          ),
        ),
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
