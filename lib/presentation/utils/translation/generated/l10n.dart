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

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get repeatPassword {
    return Intl.message(
      'Repeat password',
      name: 'repeatPassword',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get errors_unknownError {
    return Intl.message(
      'Unknown error',
      name: 'errors_unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get errors_somethingWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'errors_somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get errors_wrongPassword {
    return Intl.message(
      'Wrong password',
      name: 'errors_wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email in use`
  String get errors_emailInUse {
    return Intl.message(
      'Email in use',
      name: 'errors_emailInUse',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get errors_invalidEmail {
    return Intl.message(
      'Invalid email',
      name: 'errors_invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Field cant be empty`
  String get errors_fieldCantBeEmpty {
    return Intl.message(
      'Field cant be empty',
      name: 'errors_fieldCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password don't match`
  String get errors_passwordDontMatch {
    return Intl.message(
      'Password don\'t match',
      name: 'errors_passwordDontMatch',
      desc: '',
      args: [],
    );
  }

  /// `Operation not allowed`
  String get errors_operationNotAllowed {
    return Intl.message(
      'Operation not allowed',
      name: 'errors_operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Weak password`
  String get errors_weakPassword {
    return Intl.message(
      'Weak password',
      name: 'errors_weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `Field can't be empty`
  String get errors_fieldCanNotBeEmpty {
    return Intl.message(
      'Field can\'t be empty',
      name: 'errors_fieldCanNotBeEmpty',
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
