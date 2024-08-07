import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_button.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';

class TransportOptions extends StatefulWidget {
  const TransportOptions({super.key});

  @override
  State<TransportOptions> createState() => _TransportOptionsState();
}

class _TransportOptionsState extends State<TransportOptions> {
  TransportType _selectedTransport = TransportType.flight;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      runSpacing: AppDimensions.d6,
      children: TransportType.values.map((transport) {
        return TransportButton(
          transport: transport,
          isSelected: _selectedTransport == transport,
          onSelected: () {
            setState(() {
              _selectedTransport = transport;
            });
          },
        );
      }).toList(),
    );
  }
}
