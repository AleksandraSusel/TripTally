import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/widgets/custom_icon_button.dart';

import '../theme/app_dimensions.dart';

class IconList extends StatelessWidget {
  const IconList({super.key, required this.icons});

  final List<String> icons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.d60,
      width: AppDimensions.d300,
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: icons.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: AppDimensions.d8),
            child: Align(
                alignment: Alignment.center,
                child: CustomIconButton(
                  icon: icons[index],
                  onPressed: () {},
                )),
          ),
        ),
      ),
    );
  }
}
