import 'package:flutter/material.dart';

import '../translation/generated/l10n.dart';

extension BuildContextExtension on BuildContext {
  Size get mqs => MediaQuery.of(this).size;

  MediaQueryData get mq => MediaQuery.of(this);

  Translation get tr => Translation.of(this);

  TextTheme get tht => Theme.of(this).textTheme;
}
