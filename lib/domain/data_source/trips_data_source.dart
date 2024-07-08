import 'package:trip_tally/data/dto/trips/add_trip_dto.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class TripsDataSource {
  Future<Success> addTrip(AddTripDto dto);
}
