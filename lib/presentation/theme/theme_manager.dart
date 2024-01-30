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
      displayLarge: GoogleFonts.nunito(fontSize: AppDimensions.d40, color: AppColors.cello),
      displayMedium: GoogleFonts.nunito(fontSize: AppDimensions.d30, color: AppColors.cello),
      displaySmall: GoogleFonts.nunito(fontSize: AppDimensions.d20, color: AppColors.cello),
      headlineLarge: GoogleFonts.nunito(fontSize: AppDimensions.d40, color: AppColors.kobi),
      headlineMedium: GoogleFonts.nunito(fontSize: AppDimensions.d30, color: AppColors.kobi),
      headlineSmall: GoogleFonts.nunito(fontSize: AppDimensions.d20, color: AppColors.kobi),
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
