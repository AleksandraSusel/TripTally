import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:trip_tally/injectable/injectable.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_bloc.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_event.dart';
import 'package:trip_tally/presentation/pages/new_trip_page/bloc/new_trip_state.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/custom_snack_bar.dart';
import 'package:trip_tally/presentation/widgets/date_picker.dart';
import 'package:trip_tally/presentation/widgets/hi_traveller_title_widget.dart';
import 'package:trip_tally/presentation/widgets/icon_list.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/suffix_icon_text_field.dart';

@RoutePage()
class NewTripPage extends StatelessWidget {
  const NewTripPage({
    super.key,
    this.bloc,
  });

  final NewTripBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc ?? getIt<NewTripBloc>(),
      child: BlocConsumer<NewTripBloc, NewTripState>(
        listener: (context, state) => state.maybeWhen(
          orElse: SizedBox.shrink,
          initial: _Body.new,
          success: () => context.router.push(const PlanExpensesRoute()),
          failure: (error) => showSnackBar(context, error.name),
        ),
        builder: (context, state) => state.maybeWhen(
          orElse: SizedBox.shrink,
          initial: _Body.new,
          failure: (_) => const _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({
    super.key,
  });

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final cityName = TextEditingController();
  TransportType selectedTransportMethod = TransportType.car;
  final transportType = TextEditingController();

  DateTime? startDate;

  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: const [
        ArrowBackButton(),
        Spacer(),
        CalendarButton(),
        PackageButton(),
        PersonButton(),
      ],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HiTravellerTitleWidget(
                text: context.tr.hiTravellerSubtitle_addNewJourney,
              ),
              MainContainer(
                child: Column(
                  children: [
                    const SizedBox(height: AppDimensions.d10),
                    SuffixIconTextField(
                      controller: cityName,
                      svgPath: AppPaths.editorPen,
                      hintText: context.tr.newTripPage_whereAreYouGoing,
                    ),
                    Text(
                      context.tr.newTripPage_selectYourTransport,
                      style: context.tht.headlineSmall,
                    ),
                    const SizedBox(height: AppDimensions.d20),
                    IconList(
                      onIconSelected: (method) => setState(() {
                        selectedTransportMethod = method;
                      }),
                    ),
                    SvgPicture.asset(AppPaths.dots),
                    const SizedBox(height: AppDimensions.d20),
                    SizedBox(
                      height: AppDimensions.d152,
                      child: DatePicker(
                        onStartDateChanged: (date) => setState(() {
                          startDate = date;
                        }),
                        onEndDateChanged: (date) => setState(() {
                          endDate = date;
                        }),
                      ),
                    ),
                    CustomElevatedButton(
                      onPressed: () => context.read<NewTripBloc>().add(
                            AddTripEvent(
                              cityName: cityName.text,
                              transportType: selectedTransportMethod.name,
                              countryCode: 'PL',
                              dateFrom: DateFormat('yyyy-MM-dd').format(startDate!),
                              dateTo: DateFormat('yyyy-MM-dd').format(endDate!),
                              plannedCost: 3000,
                            ),
                          ),
                      text: context.tr.newTripPage_submit,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
