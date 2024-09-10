import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/pages/create_trip_page/widgets/transport_button.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/transport_type.dart';

class TransportOptions extends StatefulWidget {
  const TransportOptions({
    required this.onSelected,
    required this.initialTransportType,
    super.key,
  });

  final ValueSetter<TransportType> onSelected;
  final TransportType initialTransportType;

  @override
  State<TransportOptions> createState() => _TransportOptionsState();
}

class _TransportOptionsState extends State<TransportOptions> {
  late TransportType _selectedTransport;

  @override
  void initState() {
    _selectedTransport = widget.initialTransportType;
    super.initState();
  }

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
              widget.onSelected(transport);
            });
          },
        );
      }).toList(),
    );
  }
}
