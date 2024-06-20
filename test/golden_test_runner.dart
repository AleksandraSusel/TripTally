import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trip_tally/presentation/theme/theme_manager.dart';
import 'package:trip_tally/presentation/utils/enums/string_extensions.dart';
import 'package:trip_tally/presentation/utils/translation/generated/l10n.dart';

const defaultConstraints = BoxConstraints(maxWidth: 375, maxHeight: 812);

@isTest
Future<void> runGoldenTest(
  String name, {
  required Widget Function() builder,
  Interaction? whilePerforming,
  BoxConstraints constrains = defaultConstraints,
  double textScaleFactor = 1.0,
}) async {
  await goldenTest(
    name,
    fileName: name.toSnakeCase,
    builder: () => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager().getTheme(),
      localizationsDelegates: const [
        Translation.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Translation.delegate.supportedLocales,
      builder: (_, child) => builder(),
    ),
    constraints: constrains,
    textScaleFactor: textScaleFactor,
    pumpBeforeTest: precacheImages,
    whilePerforming: (tester) async {
      await whilePerforming?.call(tester);
      await tester.pumpAndSettle();
      return;
    },
  );
}
