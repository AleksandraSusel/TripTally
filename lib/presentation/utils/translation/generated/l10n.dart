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

  /// `Trip Tally`
  String get appName {
    return Intl.message(
      'Trip Tally',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Your personal trip assistant`
  String get appDescription {
    return Intl.message(
      'Your personal trip assistant',
      name: 'appDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to your account`
  String get authPage_singInToAcc {
    return Intl.message(
      'Sign in to your account',
      name: 'authPage_singInToAcc',
      desc: '',
      args: [],
    );
  }

  /// `Sign up to your account`
  String get authPage_singUpToAcc {
    return Intl.message(
      'Sign up to your account',
      name: 'authPage_singUpToAcc',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get authPage_singInGoogle {
    return Intl.message(
      'Sign in with Google',
      name: 'authPage_singInGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Google`
  String get authPage_singUpGoogle {
    return Intl.message(
      'Sign up with Google',
      name: 'authPage_singUpGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get authPage_singInApple {
    return Intl.message(
      'Sign in with Apple',
      name: 'authPage_singInApple',
      desc: '',
      args: [],
    );
  }

  /// `Sign up with Apple`
  String get authPage_singUpApple {
    return Intl.message(
      'Sign up with Apple',
      name: 'authPage_singUpApple',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get authPage_singIn {
    return Intl.message(
      'Sign in',
      name: 'authPage_singIn',
      desc: '',
      args: [],
    );
  }

  /// `Sing up`
  String get authPage_singUp {
    return Intl.message(
      'Sing up',
      name: 'authPage_singUp',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get welcomePage_WelcomeTo {
    return Intl.message(
      'Welcome to',
      name: 'welcomePage_WelcomeTo',
      desc: '',
      args: [],
    );
  }

  /// `Traveler, your name?`
  String get welcomePage_nameFieldHint {
    return Intl.message(
      'Traveler, your name?',
      name: 'welcomePage_nameFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `We need your name to tag along on your journeys!`
  String get welcomePage_nameFieldError {
    return Intl.message(
      'We need your name to tag along on your journeys!',
      name: 'welcomePage_nameFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Your travel currency?`
  String get welcomePage_currencyFieldHint {
    return Intl.message(
      'Your travel currency?',
      name: 'welcomePage_currencyFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Setting a default currency helps keep your travel budget in check!`
  String get welcomePage_currencyFieldError {
    return Intl.message(
      'Setting a default currency helps keep your travel budget in check!',
      name: 'welcomePage_currencyFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Where's your home base?`
  String get welcomePage_countryFieldHint {
    return Intl.message(
      'Where\'s your home base?',
      name: 'welcomePage_countryFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `We need to know your home country to tailor your travel experience!`
  String get welcomePage_countryFieldError {
    return Intl.message(
      'We need to know your home country to tailor your travel experience!',
      name: 'welcomePage_countryFieldError',
      desc: '',
      args: [],
    );
  }

  /// `Create new trip`
  String get createTripPage_titleBasicInfo {
    return Intl.message(
      'Create new trip',
      name: 'createTripPage_titleBasicInfo',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get createTripPage_currencyLabel {
    return Intl.message(
      'Currency',
      name: 'createTripPage_currencyLabel',
      desc: '',
      args: [],
    );
  }

  /// `Please select a currency`
  String get createTripPage_currencyError {
    return Intl.message(
      'Please select a currency',
      name: 'createTripPage_currencyError',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get generic_skip {
    return Intl.message(
      'Skip',
      name: 'generic_skip',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get generic_continue {
    return Intl.message(
      'Continue',
      name: 'generic_continue',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get generic_camera {
    return Intl.message(
      'Camera',
      name: 'generic_camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get generic_gallery {
    return Intl.message(
      'Gallery',
      name: 'generic_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Permission Denied`
  String get generic_permissionDenied {
    return Intl.message(
      'Permission Denied',
      name: 'generic_permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `The permission is permanently denied. Please go to settings to enable it.`
  String get generic_permissionDeniedDesc {
    return Intl.message(
      'The permission is permanently denied. Please go to settings to enable it.',
      name: 'generic_permissionDeniedDesc',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get generic_cancel {
    return Intl.message(
      'Cancel',
      name: 'generic_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Go to settings`
  String get generic_settings {
    return Intl.message(
      'Go to settings',
      name: 'generic_settings',
      desc: '',
      args: [],
    );
  }

  /// `You are currently on a trip!`
  String get manageTripsPage_currentlyOnTrip {
    return Intl.message(
      'You are currently on a trip!',
      name: 'manageTripsPage_currentlyOnTrip',
      desc: '',
      args: [],
    );
  }

  /// `Plan new`
  String get manageTripsPage_planNew {
    return Intl.message(
      'Plan new',
      name: 'manageTripsPage_planNew',
      desc: '',
      args: [],
    );
  }

  /// `Your next adventure awaits!`
  String get manageTripsPage_planNewSubtitle {
    return Intl.message(
      'Your next adventure awaits!',
      name: 'manageTripsPage_planNewSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Manage your trips`
  String get manageTripsPage_manageTrips {
    return Intl.message(
      'Manage your trips',
      name: 'manageTripsPage_manageTrips',
      desc: '',
      args: [],
    );
  }

  /// `Edit your trips`
  String get manageTripsPage_editTrips {
    return Intl.message(
      'Edit your trips',
      name: 'manageTripsPage_editTrips',
      desc: '',
      args: [],
    );
  }

  /// `Keep your journeys in check!`
  String get manageTripsPage_editTripsSubtitle {
    return Intl.message(
      'Keep your journeys in check!',
      name: 'manageTripsPage_editTripsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get manageTripsPage_history {
    return Intl.message(
      'History',
      name: 'manageTripsPage_history',
      desc: '',
      args: [],
    );
  }

  /// `Relive your epic travels!`
  String get manageTripsPage_historySubtitle {
    return Intl.message(
      'Relive your epic travels!',
      name: 'manageTripsPage_historySubtitle',
      desc: '',
      args: [],
    );
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

  /// `Destination`
  String get createTripSearchHint {
    return Intl.message(
      'Destination',
      name: 'createTripSearchHint',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get createTripCurrencyHint {
    return Intl.message(
      'Currency',
      name: 'createTripCurrencyHint',
      desc: '',
      args: [],
    );
  }

  /// `Budget`
  String get createTripBudgetHint {
    return Intl.message(
      'Budget',
      name: 'createTripBudgetHint',
      desc: '',
      args: [],
    );
  }

  /// `Your planned budget`
  String get createTripBudgetHelper {
    return Intl.message(
      'Your planned budget',
      name: 'createTripBudgetHelper',
      desc: '',
      args: [],
    );
  }

  /// `The currency you will use`
  String get createTripCurrencyHelper {
    return Intl.message(
      'The currency you will use',
      name: 'createTripCurrencyHelper',
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

  /// `User not found:`
  String get errors_userNotFound {
    return Intl.message(
      'User not found:',
      name: 'errors_userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `User disabled`
  String get errors_userDisabled {
    return Intl.message(
      'User disabled',
      name: 'errors_userDisabled',
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

  /// `Ups! You didn't choose any picture`
  String get errors_noImageSelected {
    return Intl.message(
      'Ups! You didn\'t choose any picture',
      name: 'errors_noImageSelected',
      desc: '',
      args: [],
    );
  }

  /// `Oh no! Something is wrong with your permissions`
  String get errors_somethingWrongPermissions {
    return Intl.message(
      'Oh no! Something is wrong with your permissions',
      name: 'errors_somethingWrongPermissions',
      desc: '',
      args: [],
    );
  }

  /// `Field can't be empty`
  String get validators_fieldCanNotBeEmpty {
    return Intl.message(
      'Field can\'t be empty',
      name: 'validators_fieldCanNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password don't match`
  String get validators_passwordDontMatch {
    return Intl.message(
      'Password don\'t match',
      name: 'validators_passwordDontMatch',
      desc: '',
      args: [],
    );
  }

  /// `Your email is incorrect`
  String get validators_yourEmailIsIncorrect {
    return Intl.message(
      'Your email is incorrect',
      name: 'validators_yourEmailIsIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `You are in:`
  String get currentTripInformation_youAreIn {
    return Intl.message(
      'You are in:',
      name: 'currentTripInformation_youAreIn',
      desc: '',
      args: [],
    );
  }

  /// `Add a new trip`
  String get homePage_addNewTrip {
    return Intl.message(
      'Add a new trip',
      name: 'homePage_addNewTrip',
      desc: '',
      args: [],
    );
  }

  /// `Go to your trip`
  String get homePage_goToYourTrip {
    return Intl.message(
      'Go to your trip',
      name: 'homePage_goToYourTrip',
      desc: '',
      args: [],
    );
  }

  /// `Plan a new trip`
  String get homePage_planNewTrip {
    return Intl.message(
      'Plan a new trip',
      name: 'homePage_planNewTrip',
      desc: '',
      args: [],
    );
  }

  /// `You have spent: `
  String get summaryRectangle_youHaveSpent {
    return Intl.message(
      'You have spent: ',
      name: 'summaryRectangle_youHaveSpent',
      desc: '',
      args: [],
    );
  }

  /// `You are still in your budget: `
  String get summaryRectangle_youAreStillInYourBudget {
    return Intl.message(
      'You are still in your budget: ',
      name: 'summaryRectangle_youAreStillInYourBudget',
      desc: '',
      args: [],
    );
  }

  /// `Hi `
  String get hiTravellerText_hi {
    return Intl.message(
      'Hi ',
      name: 'hiTravellerText_hi',
      desc: '',
      args: [],
    );
  }

  /// `traveller`
  String get hiTravellerText_traveller {
    return Intl.message(
      'traveller',
      name: 'hiTravellerText_traveller',
      desc: '',
      args: [],
    );
  }

  /// `Add new journey`
  String get hiTravellerSubtitle_addNewJourney {
    return Intl.message(
      'Add new journey',
      name: 'hiTravellerSubtitle_addNewJourney',
      desc: '',
      args: [],
    );
  }

  /// `Your profile settings`
  String get hiTravellerSubtitle_yourProfileSettings {
    return Intl.message(
      'Your profile settings',
      name: 'hiTravellerSubtitle_yourProfileSettings',
      desc: '',
      args: [],
    );
  }

  /// `Submit!`
  String get newTripPage_submit {
    return Intl.message(
      'Submit!',
      name: 'newTripPage_submit',
      desc: '',
      args: [],
    );
  }

  /// `Where are you going`
  String get newTripPage_whereAreYouGoing {
    return Intl.message(
      'Where are you going',
      name: 'newTripPage_whereAreYouGoing',
      desc: '',
      args: [],
    );
  }

  /// `Select your transport`
  String get newTripPage_selectYourTransport {
    return Intl.message(
      'Select your transport',
      name: 'newTripPage_selectYourTransport',
      desc: '',
      args: [],
    );
  }

  /// `Select dates`
  String get newTripPage_selectDates {
    return Intl.message(
      'Select dates',
      name: 'newTripPage_selectDates',
      desc: '',
      args: [],
    );
  }

  /// `Pick the start date`
  String get newTripPage_PickTheStartDate {
    return Intl.message(
      'Pick the start date',
      name: 'newTripPage_PickTheStartDate',
      desc: '',
      args: [],
    );
  }

  /// `History of your trips`
  String get settingsPage_HistoryOfYourTrips {
    return Intl.message(
      'History of your trips',
      name: 'settingsPage_HistoryOfYourTrips',
      desc: '',
      args: [],
    );
  }

  /// `Change on your email`
  String get settingsPage_ChangeYourEmail {
    return Intl.message(
      'Change on your email',
      name: 'settingsPage_ChangeYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Change on your password`
  String get settingsPage_ChangeYourPassword {
    return Intl.message(
      'Change on your password',
      name: 'settingsPage_ChangeYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Delete your account`
  String get settingsPage_DeleteYourAccount {
    return Intl.message(
      'Delete your account',
      name: 'settingsPage_DeleteYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Pick the end date`
  String get newTripPage_PickTheEndDate {
    return Intl.message(
      'Pick the end date',
      name: 'newTripPage_PickTheEndDate',
      desc: '',
      args: [],
    );
  }

  /// `You have planned:`
  String get resumeOfTripPage_YouHavePlanned {
    return Intl.message(
      'You have planned:',
      name: 'resumeOfTripPage_YouHavePlanned',
      desc: '',
      args: [],
    );
  }

  /// `You don\'t have any trips yet!`
  String get resumeOfTripExpenses_YouDontHaveAnyTrips {
    return Intl.message(
      'You don\\\'t have any trips yet!',
      name: 'resumeOfTripExpenses_YouDontHaveAnyTrips',
      desc: '',
      args: [],
    );
  }

  /// `Plan a new journey`
  String get hiTravellerSubtitle_planNewJourney {
    return Intl.message(
      'Plan a new journey',
      name: 'hiTravellerSubtitle_planNewJourney',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get planNewTripPage_next {
    return Intl.message(
      'Next',
      name: 'planNewTripPage_next',
      desc: '',
      args: [],
    );
  }

  /// `Plan expenses`
  String get planExpensesPage_planExpenses {
    return Intl.message(
      'Plan expenses',
      name: 'planExpensesPage_planExpenses',
      desc: '',
      args: [],
    );
  }

  /// `Name the expense`
  String get planExpensesPage_nameTheExpense {
    return Intl.message(
      'Name the expense',
      name: 'planExpensesPage_nameTheExpense',
      desc: '',
      args: [],
    );
  }

  /// `How much?`
  String get planExpensesPage_howMuch {
    return Intl.message(
      'How much?',
      name: 'planExpensesPage_howMuch',
      desc: '',
      args: [],
    );
  }

  /// `Chose a icon`
  String get planExpensesPage_choseIcon {
    return Intl.message(
      'Chose a icon',
      name: 'planExpensesPage_choseIcon',
      desc: '',
      args: [],
    );
  }

  /// `Safe!`
  String get planExpensesPage_safe {
    return Intl.message(
      'Safe!',
      name: 'planExpensesPage_safe',
      desc: '',
      args: [],
    );
  }

  /// `Congrats`
  String get summaryAfterClosingPage_congrats {
    return Intl.message(
      'Congrats',
      name: 'summaryAfterClosingPage_congrats',
      desc: '',
      args: [],
    );
  }

  /// `You have spent great moments in:`
  String get summaryAfterClosingPage_youHaveSpentGreatMomentsIn {
    return Intl.message(
      'You have spent great moments in:',
      name: 'summaryAfterClosingPage_youHaveSpentGreatMomentsIn',
      desc: '',
      args: [],
    );
  }

  /// `Total cost of the trip`
  String get summaryAfterClosingPage_totalCostOfTheTrip {
    return Intl.message(
      'Total cost of the trip',
      name: 'summaryAfterClosingPage_totalCostOfTheTrip',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get summaryAfterClosingPage_close {
    return Intl.message(
      'Close',
      name: 'summaryAfterClosingPage_close',
      desc: '',
      args: [],
    );
  }

  /// `Add expenses`
  String get addExpensesPage_addExpenses {
    return Intl.message(
      'Add expenses',
      name: 'addExpensesPage_addExpenses',
      desc: '',
      args: [],
    );
  }

  /// `Your planned trips`
  String get plannedTripsPage_yourPlannedTrips {
    return Intl.message(
      'Your planned trips',
      name: 'plannedTripsPage_yourPlannedTrips',
      desc: '',
      args: [],
    );
  }

  /// `You have planned`
  String get plannedTripsPage_youHavePlanned {
    return Intl.message(
      'You have planned',
      name: 'plannedTripsPage_youHavePlanned',
      desc: '',
      args: [],
    );
  }

  /// `Edit your trip`
  String get editCurrentTrip_editYourTrip {
    return Intl.message(
      'Edit your trip',
      name: 'editCurrentTrip_editYourTrip',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get editCurrentTrip_submit {
    return Intl.message(
      'Submit',
      name: 'editCurrentTrip_submit',
      desc: '',
      args: [],
    );
  }

  /// `Change a city`
  String get editCurrentTrip_changeACity {
    return Intl.message(
      'Change a city',
      name: 'editCurrentTrip_changeACity',
      desc: '',
      args: [],
    );
  }

  /// `Change a date`
  String get editCurrentTrip_changeADate {
    return Intl.message(
      'Change a date',
      name: 'editCurrentTrip_changeADate',
      desc: '',
      args: [],
    );
  }

  /// `change your transport`
  String get editCurrentTrip_changeYourTransport {
    return Intl.message(
      'change your transport',
      name: 'editCurrentTrip_changeYourTransport',
      desc: '',
      args: [],
    );
  }

  /// `Your current expenses`
  String get viewOfCurrentExpenses_yourCurrentExpenses {
    return Intl.message(
      'Your current expenses',
      name: 'viewOfCurrentExpenses_yourCurrentExpenses',
      desc: '',
      args: [],
    );
  }

  /// `You have spent`
  String get viewOfCurrentExpenses_youHaveSpent {
    return Intl.message(
      'You have spent',
      name: 'viewOfCurrentExpenses_youHaveSpent',
      desc: '',
      args: [],
    );
  }

  /// `Remove your trip`
  String get removeCurrentTripPage_removeYourTrip {
    return Intl.message(
      'Remove your trip',
      name: 'removeCurrentTripPage_removeYourTrip',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to remove the trip?`
  String get removeCurrentTripPage_doYouWantToRemoveThisTrip {
    return Intl.message(
      'Do you want to remove the trip?',
      name: 'removeCurrentTripPage_doYouWantToRemoveThisTrip',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get removeCurrentTripPage_deleteTheTrip {
    return Intl.message(
      'Delete',
      name: 'removeCurrentTripPage_deleteTheTrip',
      desc: '',
      args: [],
    );
  }

  /// `Your current trip`
  String get yourCurrentTripPage_yourCurrentTrip {
    return Intl.message(
      'Your current trip',
      name: 'yourCurrentTripPage_yourCurrentTrip',
      desc: '',
      args: [],
    );
  }

  /// `Close the trip`
  String get yourCurrentTripPage_closeTheTrip {
    return Intl.message(
      'Close the trip',
      name: 'yourCurrentTripPage_closeTheTrip',
      desc: '',
      args: [],
    );
  }

  /// `Add expense`
  String get yourCurrentTripPage_addExpense {
    return Intl.message(
      'Add expense',
      name: 'yourCurrentTripPage_addExpense',
      desc: '',
      args: [],
    );
  }

  /// `Edit the trip`
  String get yourCurrentTripPage_editTheTrip {
    return Intl.message(
      'Edit the trip',
      name: 'yourCurrentTripPage_editTheTrip',
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
      Locale.fromSubtags(languageCode: 'en'),
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
