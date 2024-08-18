import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/trips_history_page/widgets/trips_history_search_bar.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/filter_list_segmented_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';

@RoutePage()
class TripsHistoryPage extends StatefulWidget {
  const TripsHistoryPage({super.key});

  @override
  State<TripsHistoryPage> createState() => _TripsHistoryPageState();
}

class _TripsHistoryPageState extends State<TripsHistoryPage> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationAppBar(title: context.tr.tripsHistoryPage_historyOfTrips),
      body: SafeArea(
        child: Column(
          children: [
            TripsHistorySearchBar(controller: _controller),
            const FilterListSegmentedButton(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
