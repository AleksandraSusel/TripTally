import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/data/dto/trips/trip_dto.dart';
import 'package:trip_tally/domain/data_source/trips_data_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: TripsDataSource)
class TripsDataSourceImpl implements TripsDataSource {
  TripsDataSourceImpl(this.client);

  final ApiClient client;

  @override
  Future<TripDto> createTrip(CreateTripDto dto) async {
    try {
      final result = await client.createTrip(dto);
      return result.trip;
    } catch (e, stack) {
      debugPrint('Failed to create Trip.\nReason: $e\nStack: $stack');
      throw ApiException(Errors.unknownError);
    }
  }

  @override
  Future<List<TripDto>> getAllUserTrips() async {
    try {
      final result = await client.getAllUserTrips();
      return result.trips;
    } catch (e, stack) {
      debugPrint('Could not fetch trips.\nReason: $e\nStack: $stack');
      throw ApiException(Errors.unknownError);
    }
  }

  @override
  Future<Success> deleteTrip(String id) async {
    try {
      await client.deleteTrip(id);
      return const Success();
    } catch (e, stack) {
      debugPrint('Could not delete trip.\nReason: $e\nStack: $stack');
      throw ApiException(Errors.unknownError);
    }
  }
}
