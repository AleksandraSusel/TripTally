import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/budget_fields.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_options.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/buttons/proceed_floating_action_button.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/calendar/range_calendar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/navigation_app_bar.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/text_fields/location_search_text_field.dart';

@RoutePage()
class CreateTripBasicInfoPage extends StatefulWidget {
  const CreateTripBasicInfoPage({super.key});

  @override
  CreateTripBasicInfoPageState createState() => CreateTripBasicInfoPageState();
}

class CreateTripBasicInfoPageState extends State<CreateTripBasicInfoPage> {
  late final TextEditingController _currencyController;
  late final TextEditingController _budgetController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _currencyController = TextEditingController();
    _budgetController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ProceedFloatingActionButton(
        onPressed: () {
          _formKey.currentState?.validate();
        },
      ).animate().scale(delay: 400.ms),
      resizeToAvoidBottomInset: false,
      appBar: NavigationAppBar(title: context.tr.createTripPage_titleBasicInfo),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: AppDimensions.d120),
        child: Form(
          key: _formKey,
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
      ),
    );
  }
}
