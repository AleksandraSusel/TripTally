import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';
import 'package:trip_tally/domain/utils/success.dart';

abstract class TripsDataSource {
  Future<TripDto> createTrip(CreateTripDto dto);

  Future<List<TripDto>> getAllUserTrips();

  Future<TripDto> getTripById(String id);

  Future<Success> deleteTrip(String id);

  Future<Success> updateTrip(String id, CreateTripDto dto);
}
