import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/icon_list.dart';

import '../../theme/app_dimensions.dart';
import '../../theme/app_paths.dart';
import '../../utils/router/app_router.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/arrow_back_button.dart';
import '../../widgets/calendar_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/hi_traveller_title_widget.dart';
import '../../widgets/main_container.dart';
import '../../widgets/package_button.dart';
import '../../widgets/person_button.dart';
import '../../widgets/suffix_icon_text_field.dart';
import '../../widgets/transport_icons.dart';

@RoutePage()
class PlanNewTripPage extends StatelessWidget {
  const PlanNewTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actions: [
        ArrowBackButton(onTap: () {}),
        const Spacer(),
        CalendarButton(onTap: () {}),
        PackageButton(onTap: () {}),
        PersonButton(onTap: () {}),
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
                    ),
                    SvgPicture.asset(AppPaths.dots),
                    const SizedBox(height: AppDimensions.d20),
                    const SizedBox(
                      height: AppDimensions.d152,
                      child: DatePicker(),
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
