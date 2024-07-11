import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/widgets/custom_icon_button.dart';

class IconList extends StatelessWidget {
  const IconList({required this.icons, super.key, this.onIconSelected});

  final List<String> icons;
  final ValueChanged<int>? onIconSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.d60,
      width: AppDimensions.d300,
      child: Center(
        child: Align(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: icons.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: AppDimensions.d8),
              child: CustomIconButton(
                icon: icons[index],
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
