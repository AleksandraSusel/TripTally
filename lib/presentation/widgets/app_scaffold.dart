import 'package:flutter/material.dart';


class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.actions, required this.body});

  final List<Widget> actions;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: actions,
      ),
      body: body,
    );
  }
}
