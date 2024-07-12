import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/theme.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

@singleton
class ThemeManager {
  static const robotoFont = 'Roboto';
  static const robotoSerifFont = 'Roboto Serif';
  static const sailFont = 'Sail';

  static List<BoxShadow>? innerShadow(BuildContext context, {Color? containerColor}) => [
        BoxShadow(
          color: context.thc.onSurface,
          spreadRadius: 0.6,
          offset: const Offset(0.8, -1),
        ),
        BoxShadow(
          color: context.thc.primary,
        ),
      ];

  // ignore: unused_field
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
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d20),
          ),
        ),
        backgroundColor: const WidgetStatePropertyAll<Color>(AppColors.wePeep),
      ),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.linkWater,
    primaryColor: AppColors.cello,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d35,
        color: AppColors.cello,
        fontWeight: FontWeight.w900,
        letterSpacing: 3,
      ),
      displayMedium: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d24,
        color: AppColors.cello,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.05,
      ),
      displaySmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d14,
        color: AppColors.cello,
        fontWeight: FontWeight.w100,
        letterSpacing: 2,
      ),
      labelSmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d10,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
      labelMedium: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d20,
        color: AppColors.cello,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.05,
      ),
      headlineLarge: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d35,
        color: AppColors.kobi,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.05,
      ),
      headlineMedium: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d24,
        color: AppColors.kobi,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.05,
      ),
      headlineSmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d14,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.05,
      ),
      titleSmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d14,
        color: AppColors.cello,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.05,
      ),
      bodySmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d14,
        color: AppColors.red,
        fontWeight: FontWeight.w100,
        letterSpacing: 1.05,
      ),
      titleMedium: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d24,
        color: AppColors.cello,
        fontWeight: FontWeight.w100,
        letterSpacing: 1.05,
      ),
      titleLarge: TextStyle(
        fontFamily: robotoFont,
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
        fontFamily: robotoFont,
        fontSize: AppDimensions.d10,
        color: AppColors.cello,
        fontWeight: FontWeight.w400,
        letterSpacing: 2,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        foregroundColor: WidgetStateProperty.all<Color>(AppColors.cello),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: AppDimensions.d20,
            fontWeight: FontWeight.w700,
            fontFamily: robotoFont,
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

  final _themeM3Data = const MaterialTheme(
    TextTheme(
      /// [display] used for BOLD roboto fonts -> size: 22/16/14
      displayLarge: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d22,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
      ),
      displayMedium: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d16,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
      ),
      displaySmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d14,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
      ),

      /// [title] used for REGULAR roboto fonts -> size: 24/16/14
      titleLarge: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
      ),
      titleMedium: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
      ),
      titleSmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
      ),

      /// [label] used for MEDIUM roboto fonts -> size: 22/16/14
      labelLarge: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d22,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
      ),
      labelSmall: TextStyle(
        fontFamily: robotoFont,
        fontSize: AppDimensions.d14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
      ),

      /// [headline] used for sail fonts -> size: 32/24/16
      headlineLarge: TextStyle(
        fontFamily: sailFont,
        fontSize: AppDimensions.d32,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      headlineMedium: TextStyle(
        fontFamily: sailFont,
        fontSize: AppDimensions.d24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      headlineSmall: TextStyle(
        fontFamily: sailFont,
        fontSize: AppDimensions.d16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
    ),
  ).light();

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
        backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        foregroundColor: WidgetStateProperty.all<Color>(AppColors.cello),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d20),
          ),
        ),
      );

  ButtonStyle get rectangleButtonStyleSelected => ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(AppColors.wePeep),
        foregroundColor: WidgetStateProperty.all<Color>(AppColors.wePeep),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d20),
          ),
        ),
      );

  InputDecoration underlinedTextField({
    required String hintText,
    required String suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: SvgPicture.asset(fit: BoxFit.scaleDown, suffixIcon),
      hintStyle: const TextStyle(
        fontFamily: robotoFont,
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

  BoxDecoration get topContainerShadow => const BoxDecoration(
        color: AppColors.linkWater,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(AppDimensions.d40),
          bottomLeft: Radius.circular(AppDimensions.d40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: AppDimensions.d20,
            spreadRadius: AppDimensions.d1,
          ),
          BoxShadow(
            color: AppColors.porcelain,
            offset: Offset(-1, -1),
            blurRadius: AppDimensions.d3,
            spreadRadius: AppDimensions.d3,
          ),
        ],
      );

  InputDecoration suffixIconTextField({
    required String hintText,
    required String suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: SvgPicture.asset(fit: BoxFit.scaleDown, suffixIcon),
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
        fontFamily: robotoFont,
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

  ThemeData getTheme() => _themeM3Data;
}
