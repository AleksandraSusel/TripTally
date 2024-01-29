import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeManager {
  final _themeData = ThemeData(
    brightness: Brightness.light,
  );

  ThemeData getTheme() => _themeData;
}
