import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/widgets/suffix_icon_text_field.dart';

import '../../theme/app_dimensions.dart';
import '../../theme/app_paths.dart';
import '../../widgets/app_scaffold.dart';
import '../../widgets/arrow_back_button.dart';
import '../../widgets/calendar_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/hi_traveller_title_widget.dart';
import '../../widgets/icon_list.dart';
import '../../widgets/main_container.dart';
import '../../widgets/package_button.dart';
import '../../widgets/person_button.dart';
import '../../widgets/transport_icons.dart';

@RoutePage()
class NewTripPage extends StatelessWidget {
  const NewTripPage({super.key});

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
                text: context.tr.hiTravellerSubtitle_addNewJourney,
              ),
              MainContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      onPressed: () {},
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
