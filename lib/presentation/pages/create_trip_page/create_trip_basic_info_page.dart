import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/budget_fields.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_options.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/proceed_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/calendar/range_calendar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/location_search_text_field.dart';

@RoutePage()
class CreateTripBasicInfoPage extends StatefulWidget {
  const CreateTripBasicInfoPage({super.key, this.cubit});

  final OsmSuggestionsCubit? cubit;

  @override
  CreateTripBasicInfoPageState createState() => CreateTripBasicInfoPageState();
}

class CreateTripBasicInfoPageState extends State<CreateTripBasicInfoPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => widget.cubit ?? getIt<OsmSuggestionsCubit>(),
      child: BlocListener<OsmSuggestionsCubit, OsmSuggestionsState>(
        listener: (context, state) => state.whenOrNull(
          error: (error) => showSnackBar(context, error.errorText(context)),
        ),
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: ProceedFloatingActionButton(
            onPressed: () {
              _formKey.currentState?.validate();
            },
          ).animate().scale(delay: 400.ms),
          appBar: NavigationAppBar(title: context.tr.createTripPage_titleBasicInfo),
          body: _Body(formKey: _formKey),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late final TextEditingController _currencyController;
  late final TextEditingController _budgetController;

  @override
  void initState() {
    _currencyController = TextEditingController();
    _budgetController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: AppDimensions.d120),
      child: Form(
        key: widget.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LocationSearchTextField().animate().fadeIn(),
            const TransportOptions().animate().slideX(begin: -1),
            BudgetFields(
              currencyController: _currencyController,
              budgetController: _budgetController,
            ).animate().fadeIn(),
            RangeCalendar(
              onDateRangeSelected: (from, to) {},
            ).animate().slideX(begin: -1),
          ],
        ),
      ),
    );
  }
}
