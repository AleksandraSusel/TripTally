import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/delete_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/get_all_user_trips_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/custom_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/cards/elevated_trip_card.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_error_widget.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/trip_tally_progress_indicator.dart';

@RoutePage()
class PlannedTripsPage extends StatelessWidget {
  const PlannedTripsPage({
    super.key,
    this.getAllUserTripsBloc,
    this.deleteTripBloc,
  });

  @visibleForTesting
  final GetAllUserTripsBloc? getAllUserTripsBloc;
  @visibleForTesting
  final DeleteTripBloc? deleteTripBloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getAllUserTripsBloc ?? getIt<GetAllUserTripsBloc>()
            ..add(const OnGetAllUserTripsEvent()),
        ),
        BlocProvider(
          create: (context) => deleteTripBloc ?? getIt<DeleteTripBloc>(),
        ),
      ],
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: AppDimensions.d10),
          child: IconFloatingActionButton(
            onPressed: () => context.router.push(CreateTripBasicInfoRoute()),
            svgPath: AppPaths.editIcon,
          ),
        ),
        appBar: NavigationAppBar(title: context.tr.plannedTripsPage_yourTrips),
        body: BlocListener<DeleteTripBloc, DeleteTripState>(
          listener: (context, state) => state.whenOrNull(
            error: (e) => showSnackBar(
              context,
              e.errorText(context),
            ),
            success: () => showSnackBar(
              context,
              context.tr.plannedTripsPage_successDelete,
              type: SnackbarType.success,
            ),
          ),
          child: BlocConsumer<GetAllUserTripsBloc, GetAllUserTripsState>(
            listener: (context, state) => state.whenOrNull(
              error: (error) => showSnackBar(
                context,
                error.errorText(context),
              ),
            ),
            builder: (context, state) => state.maybeWhen(
              orElse: SizedBox.shrink,
              loaded: _Body.new,
              error: (e) => CustomErrorWidget(
                reason: e.errorText(context),
                onRetry: () => context.read<GetAllUserTripsBloc>()..add(const OnGetAllUserTripsEvent()),
              ),
              loading: TripTallyProgressIndicator.new,
            ),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body(this.trips);

  final List<TripEntity> trips;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  late List<TripEntity> _trips;

  @override
  void initState() {
    super.initState();
    _trips = List.of(widget.trips);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedList(
        key: _listKey,
        initialItemCount: _trips.length,
        itemBuilder: (context, index, animation) {
          final trip = _trips[index];

          return _buildAnimatedTripCard(context, index, trip, animation);
        },
      ),
    );
  }

  Widget _buildAnimatedTripCard(
    BuildContext context,
    int index,
    TripEntity trip,
    Animation<double> animation,
  ) {
    return SizeTransition(
      sizeFactor: animation,
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.d10),
        child: ElevatedTripCard(
          totalExpensesAmount: trip.totalExpenses ?? 0,
          imagePath: AppPaths.greece,
          entity: trip,
          onDeletePressed: () => showDialog<void>(
            context: context,
            builder: (ctx) => CustomAlertDialog(
              abortButtonText: context.tr.generic_cancel,
              title: context.tr.plannedTripsPage_deleteTrip,
              info: context.tr.plannedTripsPage_confirmationDeleteTrip,
              actionButtonText: context.tr.generic_confirm,
              onConfirmPressed: () => _deleteTrip(index),
            ),
          ),
          onEditPressed: () => context.router.push(CreateTripBasicInfoRoute(trip: trip)),
          onManageExpensesPressed: () {},
        ),
      ),
    );
  }

  void _deleteTrip(int index) {
    final removedTrip = _trips.removeAt(index);

    context.read<DeleteTripBloc>().add(DeleteTripEvent(removedTrip.id));
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => _buildAnimatedTripCard(context, index, removedTrip, animation),
    );
  }
}
