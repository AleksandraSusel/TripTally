import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

enum Errors {
  unknownError,
  somethingWentWrong,
  wrongPassword,
  emailInUse,
  invalidEmail,
  fieldCantBeEmpty,
  passwordDontMatch,
  weakPassword,
  operationNotAllowed,
  fieldCanNotBeEmpty,
  userDisabled,
  userNotFound
}

extension ErrorsExtension on Errors {
  String errorText(BuildContext context) {
    switch (this) {
      case Errors.userDisabled:
        return context.tr.errors_userDisabled;
      case Errors.userNotFound:
        return context.tr.errors_userNotFound;
      case Errors.unknownError:
        return context.tr.errors_unknownError;
      case Errors.somethingWentWrong:
        return context.tr.errors_somethingWentWrong;
      case Errors.wrongPassword:
        return context.tr.errors_wrongPassword;
      case Errors.emailInUse:
        return context.tr.errors_emailInUse;
      case Errors.invalidEmail:
        return context.tr.errors_invalidEmail;
      case Errors.fieldCantBeEmpty:
        return context.tr.errors_fieldCantBeEmpty;
      case Errors.passwordDontMatch:
        return context.tr.errors_passwordDontMatch;
      case Errors.weakPassword:
        return context.tr.errors_weakPassword;
      case Errors.operationNotAllowed:
        return context.tr.errors_weakPassword;
      case Errors.fieldCanNotBeEmpty:
        return context.tr.errors_fieldCanNotBeEmpty;
      default:
        return context.tr.errors_operationNotAllowed;
    }
  }
}
