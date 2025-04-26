import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_tally/data/api/osm_client.dart';
import 'package:trip_tally/data/dto/osm_map/osm_response_dto.dart';
import 'package:trip_tally/domain/data_source/osm_map_data_source.dart';
import 'package:trip_tally/domain/utils/exception.dart';
import 'package:trip_tally/presentation/utils/enums/errors.dart';

@Injectable(as: OsmMapDataSource)
class OsmMapDataSourceImpl extends OsmMapDataSource {
  OsmMapDataSourceImpl(this._osmClient);

  final OsmClient _osmClient;

  @override
  Future<List<FeatureDto>> getPlaces(String input) async {
    try {
      final result = await _osmClient.getLocationSuggestions(input: input);
      return result.features.map((feature) => feature).toList();
    } on Object catch (e) {
      debugPrint('Failed to fetch from OSM: $e');
      throw ApiException(Errors.somethingWentWrong);
    }
  }
}
