import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/widgets/custom_floating_action_button.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.actions,
    required this.body,
    this.floatingActionButton,
  });

  final List<Widget> actions;
  final Widget body;
  final CustomFloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        toolbarHeight: 100,
        actions: actions,
      ),
      body: Stack(children: [
        SizedBox.expand(child: body),
        if (floatingActionButton != null)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: floatingActionButton,
            ),
          ),
      ]),
    );
  }
}
