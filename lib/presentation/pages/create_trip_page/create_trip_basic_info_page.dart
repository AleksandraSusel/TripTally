import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/domain/entities/price/price_entity.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/bloc/create_trip_state.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/budget_fields.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_options.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/date_format.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/money_format.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/proceed_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/calendar/range_calendar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/error_border_container.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/location_search_text_field.dart';

@RoutePage()
class CreateTripBasicInfoPage extends StatelessWidget {
  const CreateTripBasicInfoPage({
    this.bloc,
    super.key,
    this.cubit,
  });

  final OsmSuggestionsCubit? cubit;
  final CreateTripBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => cubit ?? getIt<OsmSuggestionsCubit>()),
        BlocProvider(create: (context) => bloc ?? getIt<CreateTripBloc>()),
      ],
      child: const _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
    _budgetController = TextEditingController();
    _cityNameController = TextEditingController();
    _currencyController = TextEditingController();
    _countryCodeController = TextEditingController();
    showCalendarError = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OsmSuggestionsCubit, OsmSuggestionsState>(
      listener: (context, state) => state.whenOrNull(
        error: (error) => showSnackBar(context, error.errorText(context)),
      ),
      child: BlocListener<CreateTripBloc, CreateTripState>(
        listener: (context, state) => state.whenOrNull(
          failure: (error) => showSnackBar(
            context,
            error.errorText(context),
          ),
          success: () => context.router.push(CreateExpensesRoute(currency: '', tripId: '')),
        ),
        child: BlocSelector<CreateTripBloc, CreateTripState, bool>(
          selector: (state) => state.maybeWhen(orElse: () => false, loading: () => true),
          builder: (context, state) => Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
            floatingActionButton: ProceedFloatingActionButton(
              isLoading: state,
              onPressed: () {
                _formKey.currentState?.validate();
                if (_startDate != null && _endDate != null) {
                  return context.read<CreateTripBloc>().add(
                        OnCreateTripEvent(
                          cityName: _cityNameController.text,
                          transportType: _transportType.name,
                          countryCode: _countryCodeController.text,
                          dateFrom: dateFormat.format(_startDate!),
                          dateTo: dateFormat.format(_endDate!),
                          plannedCost: PriceEntity(
                            currency: MoneyFormat.extractCurrencyCode(_currencyController.text),
                            amount: _budgetController.text,
                          ),
                        ),
                      );
                }
                return setState(() {
                  showCalendarError = !showCalendarError;
                });
              },
            ).animate().scale(delay: 400.ms),
            appBar: NavigationAppBar(title: context.tr.createTripPage_titleBasicInfo),
            body: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: AppDimensions.d120),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    LocationSearchTextField(
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
      ),
    );
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
