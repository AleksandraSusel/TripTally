import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/theme/app_paths.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_methods.dart';
import 'package:trip_tally/presentation/utils/router/app_router.dart';
import 'package:trip_tally/presentation/widgets/app_scaffold.dart';
import 'package:trip_tally/presentation/widgets/arrow_back_button.dart';
import 'package:trip_tally/presentation/widgets/calendar_button.dart';
import 'package:trip_tally/presentation/widgets/custom_elevated_button.dart';
import 'package:trip_tally/presentation/widgets/hi_traveller_title_widget.dart';
import 'package:trip_tally/presentation/widgets/icon_list.dart';
import 'package:trip_tally/presentation/widgets/main_container.dart';
import 'package:trip_tally/presentation/widgets/package_button.dart';
import 'package:trip_tally/presentation/widgets/person_button.dart';
import 'package:trip_tally/presentation/widgets/suffix_icon_text_field.dart';
import 'package:trip_tally/presentation/widgets/transport_icons.dart';

@RoutePage()
class PlanNewTripPage extends StatelessWidget {
  const PlanNewTripPage({super.key});

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
                text: context.tr.hiTravellerSubtitle_planNewJourney,
              ),
              MainContainer(
                child: Column(
                  children: [
                    const SizedBox(height: AppDimensions.d10),
                    SuffixIconTextField(
                      svgPath: AppPaths.editorPen,
                      hintText: context.tr.newTripPage_whereAreYouGoing,
                    ),
                    Text(
                      context.tr.newTripPage_selectYourTransport,
                      style: context.tht.headlineSmall,
                    ),
                    const SizedBox(height: AppDimensions.d20),
                    IconList(
                      icons: transportIcons,
                      onIconSelected: (TransportMethods value) {},
                    ),
                    SvgPicture.asset(AppPaths.dots),
                    const SizedBox(height: AppDimensions.d20),
                    const SizedBox(
                      height: AppDimensions.d152,
                      // child: DatePicker(onStartDateChanged: (DateTime value) {  },),
                    ),
                    CustomElevatedButton(
                      onPressed: () => context.router.push(const PlanExpensesRoute()),
                      text: context.tr.planNewTripPage_next,
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
