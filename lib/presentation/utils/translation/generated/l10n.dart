// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Translation {
  Translation();

  static Translation? _current;

  static Translation get current {
    assert(_current != null,
        'No instance of Translation was loaded. Try to initialize the Translation delegate before accessing Translation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Translation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Translation();
      Translation._current = instance;

      return instance;
    });
  }

  static Translation of(BuildContext context) {
    final instance = Translation.maybeOf(context);
    assert(instance != null,
        'No instance of Translation present in the widget tree. Did you add Translation.delegate in localizationsDelegates?');
    return instance!;
  }

  static Translation? maybeOf(BuildContext context) {
    return Localizations.of<Translation>(context, Translation);
  }

  /// `Welcome in \n`
  String get welcomeText_welcomeIn {
    return Intl.message(
      'Welcome in \n',
      name: 'welcomeText_welcomeIn',
      desc: '',
      args: [],
    );
  }

  /// `Trip`
  String get welcomeText_trip {
    return Intl.message(
      'Trip',
      name: 'welcomeText_trip',
      desc: '',
      args: [],
    );
  }

  /// `Tally!`
  String get welcomeText_tally {
    return Intl.message(
      'Tally!',
      name: 'welcomeText_tally',
      desc: '',
      args: [],
    );
  }

  /// `The app for reporting all expenses`
  String get welcomeSubtitle_theAppForReportingAllExpenses {
    return Intl.message(
      'The app for reporting all expenses',
      name: 'welcomeSubtitle_theAppForReportingAllExpenses',
      desc: '',
      args: [],
    );
  }

  /// `while travelling`
  String get welcomeSubtitle_whileTravelling {
    return Intl.message(
      'while travelling',
      name: 'welcomeSubtitle_whileTravelling',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Translation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Translation> load(Locale locale) => Translation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
