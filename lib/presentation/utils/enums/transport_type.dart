import 'package:trip_tally/presentation/theme/app_paths.dart';

enum TransportType {
  flight(icon: AppPaths.airplaneM3),
  car(icon: AppPaths.carM3),
  bus(icon: AppPaths.busM3),
  train(icon: AppPaths.trainM3),
  ferry(icon: AppPaths.shipM3),
  bike(icon: AppPaths.bike),
  motorcycle(icon: AppPaths.motorcycle);

  const TransportType({required this.icon});

  final String icon;
}
