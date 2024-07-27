import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_button.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';

class TransportOptions extends StatefulWidget {
  const TransportOptions({super.key});

  @override
  State<TransportOptions> createState() => _TransportOptionsState();
}

class _TransportOptionsState extends State<TransportOptions> {
  TransportType? _selectedTransport;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: TransportType.values.take(4).map((transport) {
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
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: TransportType.values.skip(4).map((transport) {
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
        ),
      ],
    );
  }
}
