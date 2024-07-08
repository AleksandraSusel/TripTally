import 'package:flutter/cupertino.dart';

enum TransportMethods {
  biggerAirplane,
  cycle,
  car,
  bus,
  ship,
}

extension TransportMethodsExtension on TransportMethods {
  String transportMethodsName(BuildContext context) {
    switch (this) {
      case TransportMethods.biggerAirplane:
        return 'Fly';
      case TransportMethods.cycle:
        return 'Cycle';
      case TransportMethods.car:
        return 'Car';
      case TransportMethods.bus:
        return 'Bus';
      case TransportMethods.ship:
        return 'Ship';
      default:
        return 'Fly';
    }
  }
}
