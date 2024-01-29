import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get mqs => MediaQuery.of(this).size;

  MediaQueryData get mq => MediaQuery.of(this);

//TODO(u): UNCOMMENT AFTER ADDING INTL PACKAGE
  ///Translation get tr => Translation.of(this);

  TextTheme get tht => Theme.of(this).textTheme;
}
