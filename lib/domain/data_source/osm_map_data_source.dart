import 'package:trip_tally/data/dto/osm_map/place_dto.dart';

abstract class OsmMapDataSource {
  Future<List<PlaceDto>> getPlaces(String input);
}
