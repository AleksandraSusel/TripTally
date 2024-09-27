import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/get_all_user_trips_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/custom_floating_actiom_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/trip_tally_progress_indicator.dart';

@RoutePage()
class PlannedTripsPage extends StatelessWidget {
  const PlannedTripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetAllUserTripsBloc>()..add(const OnGetAllUserTripsEvent()),
      child: Scaffold(
        floatingActionButton: IconFloatingActionButton(
          onPressed: () {},
          svgPath: AppPaths.editIcon,
        ),
        appBar: NavigationAppBar(title: context.tr.plannedTripsPage_yourTrips),
        body: BlocConsumer<GetAllUserTripsBloc, GetAllUserTripsState>(
          listener: (context, state) => state.whenOrNull(
            error: (error) => showSnackBar(
              context,
              error.errorText(context),
            ),
          ),
          builder: (context, state) => state.maybeWhen(
            orElse: SizedBox.shrink,
            loaded: _Body.new,
            error: (_) => const SizedBox.shrink(),
            loading: TripTallyProgressIndicator.new,
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body(this.trips);

  final List<TripEntity> trips;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: trips.length,
        itemBuilder: (context, index) {
          final trip = trips[index];

          return Padding(
            padding: const EdgeInsets.all(AppDimensions.d10),
            child: ElevatedTripCard(
              totalExpensesAmount: 2000,
              imagePath: AppPaths.greece,
              entity: trip,
              onDeletePressed: () => showDialog<void>(
                context: context,
                builder: (ctx) => CustomAlertDialog(
                  abortButtonText: context.tr.generic_cancel,
                  title: context.tr.plannedTripsPage_deleteTrip,
                  info: context.tr.plannedTripsPage_confirmationDeleteTrip,
                  actionButtonText: context.tr.generic_confirm,
                  onConfirmPressed: () {},
                ),
              ),
            ),
          ).animate().slideX(begin: 1);
        },
      ),
    );
  }
}
