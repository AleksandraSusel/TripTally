import 'package:flutter/cupertino.dart';

import '../theme/app_dimensions.dart';
import 'custom_rectangle_button.dart';

class TransportMethodList extends StatelessWidget {
  const TransportMethodList({super.key, required this.icon});

  final List<String> icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.d120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: icon.length,
        itemBuilder: (context, index) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: AppDimensions.d12, right: AppDimensions.d12),
            child: CustomRectangleButton(
              icon: icon[index],
              onTap: () {},
              height: AppDimensions.d30,
              width: AppDimensions.d30,
            ),
          ),
        ),
      ),
    );
  }
}
