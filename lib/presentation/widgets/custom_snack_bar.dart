import 'package:flutter/material.dart';

void showSnackBar(
  BuildContext context,
  String text, {
  int seconds = 2,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: seconds),
      content: Text(
        text,
      ),
    ),
  );
}
