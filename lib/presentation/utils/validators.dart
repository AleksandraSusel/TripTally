import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/string_extensions.dart';

class Validator {
  static String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.tr.validators_fieldCanNotBeEmpty;
    } else if (!value.isValidEmail) {
      return context.tr.validators_yourEmailIsIncorrect;
    } else {
      return null;
    }
  }

  static String? validatePasswords(String? password, String? repeatPassword, BuildContext context) {
    if (password == null || password.isEmpty) {
      return context.tr.validators_fieldCanNotBeEmpty;
    } else if (password != repeatPassword) {
      return context.tr.validators_passwordDontMatch;
    } else {
      return null;
    }
  }

  static String? isFieldEmpty(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return context.tr.validators_fieldCanNotBeEmpty;
    } else {
      return null;
    }
  }
}
