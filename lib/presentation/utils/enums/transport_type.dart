import 'package:trip_tally/presentation/theme/app_paths.dart';

enum TransportType {
  airplane(icon: AppPaths.airplaneM3),
  bus(icon: AppPaths.busM3),
  car(icon: AppPaths.carM3),
  ship(icon: AppPaths.shipM3),
  train(icon: AppPaths.trainM3);

  const TransportType({required this.icon});

  final String icon;
}
