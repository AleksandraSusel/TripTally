import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

void customSnackBar(
  BuildContext context,
  String text, {
  Color color = Colors.red,
  int seconds = 2,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: seconds),
      backgroundColor: color,
      content: Text(
        text,
        style: context.tht.bodySmall,
      ),
    ),
  );
}
