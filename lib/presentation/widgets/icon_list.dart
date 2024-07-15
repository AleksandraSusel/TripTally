import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';

class IconList extends StatelessWidget {
  const IconList({
    required this.onIconSelected,
    super.key,
  });

  final ValueChanged<TransportType> onIconSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: TransportType.values.map((transportType) {
        return IconButton(
          icon: SvgPicture.asset(transportType.icon),
          onPressed: () => onIconSelected(transportType),
        );
      }).toList(),
    );
  }
}
