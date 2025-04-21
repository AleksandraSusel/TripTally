import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/location/create_location_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';
import 'package:trip_tally/domain/entities/trips/create_trip_entity.dart';
import 'package:trip_tally/domain/entities/trips/trip_entity.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/budget_fields.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_options.dart';
import 'package:trip_tally/presentation/pages/planned_trips_page/bloc/update_trip_bloc.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/basic_state.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/proceed_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/calendar/range_calendar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/custom_alert_dialog.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/error_border_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/location_search_text_field.dart';

@RoutePage()
class CreateTripBasicInfoPage extends StatelessWidget {
  const CreateTripBasicInfoPage({
    this.createTripBloc,
    super.key,
    this.cubit,
    this.trip,
    this.updateTripBloc,
  });

  final OsmSuggestionsCubit? cubit;
  final CreateTripBloc? createTripBloc;
  final UpdateTripBloc? updateTripBloc;
  final TripEntity? trip;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => cubit ?? getIt<OsmSuggestionsCubit>()),
        BlocProvider(create: (context) => createTripBloc ?? getIt<CreateTripBloc>()),
        BlocProvider(create: (context) => updateTripBloc ?? getIt<UpdateTripBloc>()),
      ],
      child: _Body(trip: trip),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({this.trip});

  final TripEntity? trip;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TripEntity? _trip;
  late final TextEditingController _currencyController;
  late final TextEditingController _budgetController;
  late final TextEditingController _cityNameController;
  late final TextEditingController _countryCodeController;

  DateTime? _startDate;
  DateTime? _endDate;
  TransportType _transportType = TransportType.flight;
  late bool showCalendarError;

  @override
  void initState() {
    _trip = widget.trip;
    _budgetController = TextEditingController();
    _cityNameController = TextEditingController();
    _currencyController = TextEditingController();
    _countryCodeController = TextEditingController();
    if (_trip != null) {
      _budgetController.text = _trip.plannedCost.amount;
      _currencyController.text = _trip.plannedCost.currency;
      _cityNameController.text = _trip.location.cityName;
      _countryCodeController.text = _trip.location.countryCode;
      _transportType = TransportType.parseTransportType(_trip.transportType);
      _endDate = DateTime.parse(_trip.dateTo);
      _startDate = DateTime.parse(_trip.dateFrom);
    }
    showCalendarError = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isUpdateMode = _trip != null;
    return MultiBlocListener(
      listeners: [
        BlocListener<OsmSuggestionsCubit, BasicState<List<PlaceEntity>>>(
          listener: (context, state) => switch (state) {
            FailureState(error: final error) => showSnackBar(
                context,
                error.errorText(context),
              ),
            _ => null,
          },
        ),
        BlocListener<UpdateTripBloc, BasicState<void>>(
          listener: (context, state) => switch (state) {
            SuccessState() => {
                showSnackBar(
                  context,
                  context.tr.createTripPage_updateTripSuccess,
                  type: SnackbarType.success,
                ),
                context.router.pushAndPopUntil(
                  PlannedTripsRoute(),
                  predicate: (route) => route.settings.name == HomeRoute.name,
                ),
              },
            FailureState(error: final error) => showSnackBar(
                context,
                error.errorText(context),
              ),
            _ => null,
          },
        ),
        BlocListener<CreateTripBloc, BasicState<TripEntity>>(
          listener: (context, state) => switch (state) {
            FailureState(error: final error) => showSnackBar(
                context,
                error.errorText(context),
              ),
            LoadedState(data: final data) => _onSuccess(data),
            _ => null,
          },
        ),
      ],
      child: BlocSelector<CreateTripBloc, BasicState<TripEntity>, bool>(
        selector: (state) => switch (state) {
          LoadingState() => true,
          _ => false,
        },
        builder: (context, state) => Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: ProceedFloatingActionButton(
            isLoading: state,
            text: isUpdateMode ? context.tr.createTripPage_updateTrip : 'Create trip',
            icon: AppPaths.doubleCheck,
            onPressed: _onProceedPressed,
          ).animate().scale(delay: 400.ms),
          appBar: NavigationAppBar(
            title: isUpdateMode ? context.tr.createTripPage_updateTrip : context.tr.createTripPage_titleBasicInfo,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: AppDimensions.d120),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  LocationSearchTextField(
                    initialLocation: _trip?.location,
                    onLocationSelected: (String cityName, String countryCode) {
                      setState(() {
                        _cityNameController.text = cityName;
                        _countryCodeController.text = countryCode;
                      });
                    },
                  ).animate().fadeIn(),
                  TransportOptions(
                    initialTransportType: _transportType,
                    onSelected: (TransportType transportType) {
                      setState(() {
                        _transportType = transportType;
                      });
                    },
                  ).animate().slideX(begin: -1),
                  BudgetFields(
                    currencyController: _currencyController,
                    budgetController: _budgetController,
                  ).animate().fadeIn(),
                  ErrorBorderContainer(
                    showError: showCalendarError,
                    child: RangeCalendar(
                      initialStartDate: isUpdateMode ? DateTime.parse(_trip.dateFrom) : null,
                      initialEndDate: isUpdateMode ? DateTime.parse(_trip.dateTo) : null,
                      onDateRangeSelected: (from, to) {
                        setState(() {
                          _startDate = from;
                          _endDate = to;
                          showCalendarError = false;
                        });
                      },
                    ).animate().slideX(begin: -1),
                  ),
                  if (showCalendarError)
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: AppDimensions.d16, top: AppDimensions.d10),
                        child: Text(
                          context.tr.createTripBasicInfoPage_dateNotSelected,
                          style: context.tht.titleSmall?.copyWith(color: context.thc.error),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onSuccess(TripEntity entity) {
    showDialog<void>(
      context: context,
      builder: (ctx) => CustomAlertDialog(
        title: 'Trip to ${entity.location.cityName} successfully created!',
        info: 'Would you like to add expenses now?',
        actionButtonText: 'Add expenses',
        abortButtonText: 'Maybe later',
        isWarningAction: false,
        onConfirmPressed: () => context.router.replace(CreateExpensesRoute(trip: entity)),
        onAbortPressed: () => context.router.popUntil(
          (route) => route.settings.name == HomeRoute.name,
        ),
      ),
    );
  }

  void _onProceedPressed() {
    _formKey.currentState?.validate();

    if (_startDate != null && _endDate != null) {
      final entity = CreateTripEntity(
        transportType: _transportType.name,
        dateFrom: dateFormat.format(_startDate!),
        dateTo: dateFormat.format(_endDate!),
        plannedCost: PriceEntity(
          currency: MoneyFormat.extractCurrencyCode(_currencyController.text),
          amount: _budgetController.text,
        ),
        location: CreateLocationEntity(
          countryCode: _countryCodeController.text,
          cityName: _cityNameController.text,
        ),
        expenses: [],
      );
      if (_trip != null) {
        return context.read<UpdateTripBloc>().add(UpdateTripEvent(_trip.id, entity));
      }
      return context.read<CreateTripBloc>().add(OnCreateTripEvent(entity));
    }
    return setState(() {
      showCalendarError = !showCalendarError;
    });
  }

  @override
  void dispose() {
    _currencyController.dispose();
    _budgetController.dispose();
    _cityNameController.dispose();
    _countryCodeController.dispose();
    super.dispose();
  }
}
