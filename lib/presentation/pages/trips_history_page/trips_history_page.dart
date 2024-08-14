import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/filter_list_segmented_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/trips_text_field.dart';

@RoutePage()
class TripsHistoryPage extends StatelessWidget {
  const TripsHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: NavigationAppBar(title: context.tr.tripsHistoryPage_historyOfTrips),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TripsTextField(controller: controller),
              const SizedBox(
                height: AppDimensions.d700,
                child: FilterListSegmentedButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
