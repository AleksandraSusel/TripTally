import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/utils/enums/transport_methods.dart';

class IconList extends StatelessWidget {
  const IconList({
    required this.icons,
    required this.onIconSelected,
    super.key,
  });

  final List<String> icons;
  final ValueChanged<TransportMethods> onIconSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: TransportMethods.values.map((method) {
        return IconButton(
          icon: SvgPicture.asset(icons[method.index]),
          onPressed: () => onIconSelected(method),
        );
      }).toList(),
    );
  }
}
