// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  static String m0(tripName) => "Expenses for trip to ${tripName} successfully added!";

  static String m1(transportName) => "Transport: ${transportName}";

  static String m2(tripName) => "Trip to ${tripName} successfully created!";

  static String m3(reason) => "Reason: ${reason}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appDescription": MessageLookupByLibrary.simpleMessage(
          "Your personal trip assistant",
        ),
        "appName": MessageLookupByLibrary.simpleMessage("Trip Tally"),
        "authPage_singIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "authPage_singInApple": MessageLookupByLibrary.simpleMessage(
          "Sign in with Apple",
        ),
        "authPage_singInGoogle": MessageLookupByLibrary.simpleMessage(
          "Sign in with Google",
        ),
        "authPage_singInToAcc": MessageLookupByLibrary.simpleMessage(
          "Sign in to your account",
        ),
        "authPage_singUp": MessageLookupByLibrary.simpleMessage("Sing up"),
        "authPage_singUpApple": MessageLookupByLibrary.simpleMessage(
          "Sign up with Apple",
        ),
        "authPage_singUpGoogle": MessageLookupByLibrary.simpleMessage(
          "Sign up with Google",
        ),
        "authPage_singUpToAcc": MessageLookupByLibrary.simpleMessage(
          "Sign up to your account",
        ),
        "bottomNavBarItem_community": MessageLookupByLibrary.simpleMessage(
          "Community",
        ),
        "bottomNavBarItem_dashboard": MessageLookupByLibrary.simpleMessage(
          "Dashboard",
        ),
        "bottomNavBarItem_expenses": MessageLookupByLibrary.simpleMessage(
          "Expenses",
        ),
        "bottomNavBarItem_places": MessageLookupByLibrary.simpleMessage("Places"),
        "bottomNavBarItem_statistic": MessageLookupByLibrary.simpleMessage(
          "Statistic",
        ),
        "bottomNavBarItem_trips": MessageLookupByLibrary.simpleMessage("Trips"),
        "createExpensesPage_addExpense": MessageLookupByLibrary.simpleMessage(
          "Add expense",
        ),
        "createExpensesPage_budget": MessageLookupByLibrary.simpleMessage("Budget"),
        "createExpensesPage_category": MessageLookupByLibrary.simpleMessage(
          "Category",
        ),
        "createExpensesPage_cost": MessageLookupByLibrary.simpleMessage("Cost"),
        "createExpensesPage_currency": MessageLookupByLibrary.simpleMessage(
          "Currency",
        ),
        "createExpensesPage_expenseCategory": MessageLookupByLibrary.simpleMessage(
          "Expense category",
        ),
        "createExpensesPage_expenseCost": MessageLookupByLibrary.simpleMessage(
          "Cost of the expense",
        ),
        "createExpensesPage_expenseCurrency": MessageLookupByLibrary.simpleMessage(
          "Expense currency",
        ),
        "createExpensesPage_finish": MessageLookupByLibrary.simpleMessage("Finish"),
        "createExpensesPage_name": MessageLookupByLibrary.simpleMessage("Name"),
        "createExpensesPage_nameExpense": MessageLookupByLibrary.simpleMessage(
          "Name the expense",
        ),
        "createExpensesPage_submitExpenses": MessageLookupByLibrary.simpleMessage(
          "Submit expenses",
        ),
        "createExpensesPage_successMessage": m0,
        "createExpensesPage_transportType": m1,
        "createTripBasicInfoPage_dateNotSelected": MessageLookupByLibrary.simpleMessage("Date not selected"),
        "createTripBudgetHelper": MessageLookupByLibrary.simpleMessage(
          "Your planned budget",
        ),
        "createTripBudgetHint": MessageLookupByLibrary.simpleMessage("Budget"),
        "createTripCurrencyHelper": MessageLookupByLibrary.simpleMessage(
          "The currency you will use",
        ),
        "createTripCurrencyHint": MessageLookupByLibrary.simpleMessage("Currency"),
        "createTripPage_currencyError": MessageLookupByLibrary.simpleMessage(
          "Please select a currency",
        ),
        "createTripPage_currencyLabel": MessageLookupByLibrary.simpleMessage(
          "Currency",
        ),
        "createTripPage_successMessage": m2,
        "createTripPage_titleBasicInfo": MessageLookupByLibrary.simpleMessage(
          "Create new trip",
        ),
        "createTripPage_updateTrip": MessageLookupByLibrary.simpleMessage(
          "Update trip",
        ),
        "createTripPage_updateTripSuccess": MessageLookupByLibrary.simpleMessage(
          "Trip updated successfully!",
        ),
        "createTripSearchHint": MessageLookupByLibrary.simpleMessage("Destination"),
        "currentTripInformation_youAreIn": MessageLookupByLibrary.simpleMessage(
          "You are in:",
        ),
        "dashboardPage_welcomeBack": MessageLookupByLibrary.simpleMessage(
          "Welcome back",
        ),
        "drawer_logout": MessageLookupByLibrary.simpleMessage("Wyloguj"),
        "drawer_logoutDialogCancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "drawer_logoutDialogConfirm": MessageLookupByLibrary.simpleMessage(
          "Wyloguj",
        ),
        "drawer_logoutDialogMessage": MessageLookupByLibrary.simpleMessage(
          "Czy na pewno chcesz się wylogować?",
        ),
        "drawer_logoutDialogTitle": MessageLookupByLibrary.simpleMessage("Wyloguj"),
        "drawer_messages": MessageLookupByLibrary.simpleMessage("Wiadomości"),
        "drawer_settings": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "editCurrentTrip_changeACity": MessageLookupByLibrary.simpleMessage(
          "Change a city",
        ),
        "editCurrentTrip_changeADate": MessageLookupByLibrary.simpleMessage(
          "Change a date",
        ),
        "editCurrentTrip_changeYourTransport": MessageLookupByLibrary.simpleMessage(
          "change your transport",
        ),
        "editCurrentTrip_editYourTrip": MessageLookupByLibrary.simpleMessage(
          "Edit your trip",
        ),
        "editCurrentTrip_submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "errorWidget_button": MessageLookupByLibrary.simpleMessage("Retry"),
        "errorWidget_subtitle": m3,
        "errorWidget_title": MessageLookupByLibrary.simpleMessage(
          "Ups! Something went wrong",
        ),
        "errors_emailInUse": MessageLookupByLibrary.simpleMessage("Email in use"),
        "errors_fieldCanNotBeEmpty": MessageLookupByLibrary.simpleMessage(
          "Field can\'t be empty",
        ),
        "errors_fieldCantBeEmpty": MessageLookupByLibrary.simpleMessage(
          "Field cant be empty",
        ),
        "errors_invalidEmail": MessageLookupByLibrary.simpleMessage(
          "Invalid email",
        ),
        "errors_noImageSelected": MessageLookupByLibrary.simpleMessage(
          "Ups! You didn\'t choose any picture",
        ),
        "errors_operationNotAllowed": MessageLookupByLibrary.simpleMessage(
          "Operation not allowed",
        ),
        "errors_passwordDontMatch": MessageLookupByLibrary.simpleMessage(
          "Password don\'t match",
        ),
        "errors_somethingWentWrong": MessageLookupByLibrary.simpleMessage(
          "Something went wrong",
        ),
        "errors_somethingWrongPermissions": MessageLookupByLibrary.simpleMessage(
          "Oh no! Something is wrong with your permissions",
        ),
        "errors_unknownError": MessageLookupByLibrary.simpleMessage(
          "Unknown error",
        ),
        "errors_userDisabled": MessageLookupByLibrary.simpleMessage(
          "User disabled",
        ),
        "errors_userNotFound": MessageLookupByLibrary.simpleMessage(
          "User not found:",
        ),
        "errors_weakPassword": MessageLookupByLibrary.simpleMessage(
          "Weak password",
        ),
        "errors_wrongPassword": MessageLookupByLibrary.simpleMessage(
          "Wrong password",
        ),
        "filterListSegmentedButton_longest": MessageLookupByLibrary.simpleMessage(
          "Longest",
        ),
        "filterListSegmentedButton_mostExpensive": MessageLookupByLibrary.simpleMessage("Most expensive"),
        "filterListSegmentedButton_shortest": MessageLookupByLibrary.simpleMessage(
          "Shortest",
        ),
        "generic_camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "generic_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "generic_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "generic_continue": MessageLookupByLibrary.simpleMessage("Continue"),
        "generic_gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "generic_permissionDenied": MessageLookupByLibrary.simpleMessage(
          "Permission Denied",
        ),
        "generic_permissionDeniedDesc": MessageLookupByLibrary.simpleMessage(
          "The permission is permanently denied. Please go to settings to enable it.",
        ),
        "generic_search": MessageLookupByLibrary.simpleMessage("Search"),
        "generic_settings": MessageLookupByLibrary.simpleMessage("Go to settings"),
        "generic_skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "hiTravellerSubtitle_addNewJourney": MessageLookupByLibrary.simpleMessage(
          "Add new journey",
        ),
        "hiTravellerSubtitle_planNewJourney": MessageLookupByLibrary.simpleMessage(
          "Plan a new journey",
        ),
        "hiTravellerSubtitle_yourProfileSettings": MessageLookupByLibrary.simpleMessage("Your profile settings"),
        "hiTravellerText_hi": MessageLookupByLibrary.simpleMessage("Hi "),
        "hiTravellerText_traveller": MessageLookupByLibrary.simpleMessage(
          "traveller",
        ),
        "homePage_addNewTrip": MessageLookupByLibrary.simpleMessage(
          "Add a new trip",
        ),
        "homePage_goToYourTrip": MessageLookupByLibrary.simpleMessage(
          "Go to your trip",
        ),
        "homePage_planNewTrip": MessageLookupByLibrary.simpleMessage(
          "Plan a new trip",
        ),
        "homePage_youAreCurrentlyOnATrip": MessageLookupByLibrary.simpleMessage(
          "You are currently on a trip",
        ),
        "homePage_yourPlannedTrips": MessageLookupByLibrary.simpleMessage(
          "Your planned trips:",
        ),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "manageTripsPage_currentlyOnTrip": MessageLookupByLibrary.simpleMessage(
          "You are currently on a trip!",
        ),
        "manageTripsPage_editTrips": MessageLookupByLibrary.simpleMessage(
          "Edit your trips",
        ),
        "manageTripsPage_editTripsSubtitle": MessageLookupByLibrary.simpleMessage(
          "Keep your journeys in check!",
        ),
        "manageTripsPage_history": MessageLookupByLibrary.simpleMessage("History"),
        "manageTripsPage_historySubtitle": MessageLookupByLibrary.simpleMessage(
          "Relive your epic travels!",
        ),
        "manageTripsPage_manageTrips": MessageLookupByLibrary.simpleMessage(
          "Manage your trips",
        ),
        "manageTripsPage_planNew": MessageLookupByLibrary.simpleMessage("Plan new"),
        "manageTripsPage_planNewSubtitle": MessageLookupByLibrary.simpleMessage(
          "Your next adventure awaits!",
        ),
        "newTripPage_PickTheEndDate": MessageLookupByLibrary.simpleMessage(
          "Pick the end date",
        ),
        "newTripPage_PickTheStartDate": MessageLookupByLibrary.simpleMessage(
          "Pick the start date",
        ),
        "newTripPage_selectDates": MessageLookupByLibrary.simpleMessage(
          "Select dates",
        ),
        "newTripPage_selectYourTransport": MessageLookupByLibrary.simpleMessage(
          "Select your transport",
        ),
        "newTripPage_submit": MessageLookupByLibrary.simpleMessage("Submit!"),
        "newTripPage_whereAreYouGoing": MessageLookupByLibrary.simpleMessage(
          "Where are you going",
        ),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "outlinedTripCardButton_addExpense": MessageLookupByLibrary.simpleMessage(
          "Add expense",
        ),
        "outlinedTripCardButton_endTheTrip": MessageLookupByLibrary.simpleMessage(
          "End the trip",
        ),
        "outlinedTripCardButton_totalExpenses": MessageLookupByLibrary.simpleMessage("Total expenses:"),
        "outlinedTripCardButton_transportType": MessageLookupByLibrary.simpleMessage("Transport type:"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "planExpensesPage_choseIcon": MessageLookupByLibrary.simpleMessage(
          "Chose a icon",
        ),
        "planExpensesPage_howMuch": MessageLookupByLibrary.simpleMessage(
          "How much?",
        ),
        "planExpensesPage_nameTheExpense": MessageLookupByLibrary.simpleMessage(
          "Name the expense",
        ),
        "planExpensesPage_planExpenses": MessageLookupByLibrary.simpleMessage(
          "Plan expenses",
        ),
        "planExpensesPage_safe": MessageLookupByLibrary.simpleMessage("Safe!"),
        "planNewTripPage_next": MessageLookupByLibrary.simpleMessage("Next"),
        "plannedTripsPage_confirmationDeleteTrip": MessageLookupByLibrary.simpleMessage(
          "Are you sure to delete this trip?",
        ),
        "plannedTripsPage_deleteTrip": MessageLookupByLibrary.simpleMessage(
          "Delete trip",
        ),
        "plannedTripsPage_successDelete": MessageLookupByLibrary.simpleMessage(
          "Successfully deleted the trip",
        ),
        "plannedTripsPage_yourPlannedTrips": MessageLookupByLibrary.simpleMessage(
          "Your planned trips",
        ),
        "plannedTripsPage_yourTrips": MessageLookupByLibrary.simpleMessage(
          "Your trips",
        ),
        "registration": MessageLookupByLibrary.simpleMessage("Registration"),
        "removeCurrentTripPage_deleteTheTrip": MessageLookupByLibrary.simpleMessage(
          "Delete",
        ),
        "removeCurrentTripPage_doYouWantToRemoveThisTrip":
            MessageLookupByLibrary.simpleMessage("Do you want to remove the trip?"),
        "removeCurrentTripPage_removeYourTrip": MessageLookupByLibrary.simpleMessage("Remove your trip"),
        "repeatPassword": MessageLookupByLibrary.simpleMessage("Repeat password"),
        "resumeOfTripExpenses_YouDontHaveAnyTrips": MessageLookupByLibrary.simpleMessage(
          "You don\\\'t have any trips yet!",
        ),
        "resumeOfTripPage_YouHavePlanned": MessageLookupByLibrary.simpleMessage(
          "You have planned:",
        ),
        "settingsPage_ChangeYourEmail": MessageLookupByLibrary.simpleMessage(
          "Change on your email",
        ),
        "settingsPage_ChangeYourPassword": MessageLookupByLibrary.simpleMessage(
          "Change on your password",
        ),
        "settingsPage_DeleteYourAccount": MessageLookupByLibrary.simpleMessage(
          "Delete your account",
        ),
        "settingsPage_HistoryOfYourTrips": MessageLookupByLibrary.simpleMessage(
          "History of your trips",
        ),
        "summaryAfterClosingPage_close": MessageLookupByLibrary.simpleMessage(
          "Close",
        ),
        "summaryAfterClosingPage_congrats": MessageLookupByLibrary.simpleMessage(
          "Congrats",
        ),
        "summaryAfterClosingPage_totalCostOfTheTrip": MessageLookupByLibrary.simpleMessage("Total cost of the trip"),
        "summaryAfterClosingPage_youHaveSpentGreatMomentsIn": MessageLookupByLibrary.simpleMessage(
          "You have spent great moments in:",
        ),
        "summaryRectangle_youAreStillInYourBudget":
            MessageLookupByLibrary.simpleMessage("You are still in your budget: "),
        "summaryRectangle_youHaveSpent": MessageLookupByLibrary.simpleMessage(
          "You have spent: ",
        ),
        "tripsHistoryPage_historyOfTrips": MessageLookupByLibrary.simpleMessage(
          "History of your trips",
        ),
        "tripsHistoryPage_searchTrip": MessageLookupByLibrary.simpleMessage(
          "Search a trip",
        ),
        "userProfilePage_changeEmail": MessageLookupByLibrary.simpleMessage(
          "Change your email",
        ),
        "userProfilePage_changeEmailDialogNewEmail":
            MessageLookupByLibrary.simpleMessage("Enter your new email address"),
        "userProfilePage_changeEmailDialogPassword": MessageLookupByLibrary.simpleMessage("Enter your password"),
        "userProfilePage_changeName": MessageLookupByLibrary.simpleMessage(
          "Change your name",
        ),
        "userProfilePage_changeNameDialog": MessageLookupByLibrary.simpleMessage(
          "Enter your new name",
        ),
        "userProfilePage_changePassword": MessageLookupByLibrary.simpleMessage(
          "Change your password",
        ),
        "userProfilePage_changePasswordDesc": MessageLookupByLibrary.simpleMessage(
          "We will send you an email with a link to change your password",
        ),
        "userProfilePage_deleteAccount": MessageLookupByLibrary.simpleMessage(
          "Remove your account",
        ),
        "userProfilePage_deleteAccountDesc": MessageLookupByLibrary.simpleMessage(
          "Click to remove your account",
        ),
        "userProfilePage_deleteAccountDialog": MessageLookupByLibrary.simpleMessage(
          "Are you sure you want to delete your account?",
        ),
        "userProfilePage_deleteAccountDialogDesc": MessageLookupByLibrary.simpleMessage("This action is irreversible"),
        "userProfilePage_finishedTrips": MessageLookupByLibrary.simpleMessage(
          "Finished Trips",
        ),
        "userProfilePage_followers": MessageLookupByLibrary.simpleMessage(
          "Followers",
        ),
        "userProfilePage_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "userProfilePage_logoutDesc": MessageLookupByLibrary.simpleMessage(
          "Click to logout from your account",
        ),
        "userProfilePage_settings": MessageLookupByLibrary.simpleMessage("Setting"),
        "userProfilePage_tripsSpend": MessageLookupByLibrary.simpleMessage(
          "Spend on trips",
        ),
        "userProfilePage_yourProfile": MessageLookupByLibrary.simpleMessage(
          "Your profile",
        ),
        "validators_fieldCanNotBeEmpty": MessageLookupByLibrary.simpleMessage(
          "Field can\'t be empty",
        ),
        "validators_passwordDontMatch": MessageLookupByLibrary.simpleMessage(
          "Password don\'t match",
        ),
        "validators_yourEmailIsIncorrect": MessageLookupByLibrary.simpleMessage(
          "Your email is incorrect",
        ),
        "viewOfCurrentExpenses_youHaveSpent": MessageLookupByLibrary.simpleMessage(
          "You have spent",
        ),
        "viewOfCurrentExpenses_yourCurrentExpenses": MessageLookupByLibrary.simpleMessage("Your current expenses"),
        "welcomePage_WelcomeTo": MessageLookupByLibrary.simpleMessage("Welcome to"),
        "welcomePage_countryFieldError": MessageLookupByLibrary.simpleMessage(
          "We need to know your home country to tailor your travel experience!",
        ),
        "welcomePage_countryFieldHint": MessageLookupByLibrary.simpleMessage(
          "Where\'s your home base?",
        ),
        "welcomePage_currencyFieldError": MessageLookupByLibrary.simpleMessage(
          "Setting a default currency helps keep your travel budget in check!",
        ),
        "welcomePage_currencyFieldHint": MessageLookupByLibrary.simpleMessage(
          "Your travel currency?",
        ),
        "welcomePage_nameFieldError": MessageLookupByLibrary.simpleMessage(
          "We need your name to tag along on your journeys!",
        ),
        "welcomePage_nameFieldHint": MessageLookupByLibrary.simpleMessage(
          "Traveler, your name?",
        ),
        "welcomeSubtitle_theAppForReportingAllExpenses": MessageLookupByLibrary.simpleMessage(
          "The app for reporting all expenses",
        ),
        "welcomeSubtitle_whileTravelling": MessageLookupByLibrary.simpleMessage(
          "while travelling",
        ),
        "welcomeText_tally": MessageLookupByLibrary.simpleMessage("Tally!"),
        "welcomeText_trip": MessageLookupByLibrary.simpleMessage("Trip"),
        "welcomeText_welcomeIn": MessageLookupByLibrary.simpleMessage(
          "Welcome in \n",
        ),
        "yourCurrentTripPage_addExpense": MessageLookupByLibrary.simpleMessage(
          "Add expense",
        ),
        "yourCurrentTripPage_closeTheTrip": MessageLookupByLibrary.simpleMessage(
          "Close the trip",
        ),
        "yourCurrentTripPage_editTheTrip": MessageLookupByLibrary.simpleMessage(
          "Edit the trip",
        ),
        "yourCurrentTripPage_yourCurrentTrip": MessageLookupByLibrary.simpleMessage(
          "Your current trip",
        ),
      };
}
