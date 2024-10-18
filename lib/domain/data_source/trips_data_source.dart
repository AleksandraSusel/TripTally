import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class TripsDataSource {
  Future<Success> createTrip(CreateTripDto dto);

  Future<List<TripDto>> getAllUserTrips();

  Future<Success> deleteTrip(String id);
}
