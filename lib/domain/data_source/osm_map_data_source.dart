import 'package:trip_tally/data/dto/osm_map/osm_response_dto.dart';

abstract class OsmMapDataSource {
  Future<List<FeatureDto>> getPlaces(String input);
}
