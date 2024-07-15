import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/api/api_client.dart';
import 'package:trip_tally/data/dto/trips/create_trip_dto.dart';
import 'package:trip_tally/domain/data_source/trips_data_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/domain/utils/success.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: TripsDataSource)
class TripsDataSourceImpl implements TripsDataSource {
  TripsDataSourceImpl(this.client);

  final ApiClient client;

  @override
  Future<Success> createTrip(CreateTripDto dto) async {
    try {
      await client.addTrip(dto);
      return const Success();
    } catch (e) {
      throw ApiException(Errors.unknownError);
    }
  }
}
