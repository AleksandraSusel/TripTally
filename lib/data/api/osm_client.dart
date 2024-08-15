import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trip_tally/data/dto/osm_map/osm_response_dto.dart';
import 'package:trip_tally/environment.config.dart';

part 'osm_client.g.dart';

@injectable
@RestApi(baseUrl: EnvConfig.osmUrl)
abstract class OsmClient {
  @factoryMethod
  factory OsmClient(@Named('OsmDio') Dio dio) => _OsmClient(dio);

  @GET('search')
  Future<OsmResponseDto> getLocationSuggestions({
    @Query('q') required String input,
    @Query('format') String format = 'geojson',
    @Query('addressdetails') int addressDetails = 1,
    @Query('limit') int limit = 5,
    @Query('accept-language') String acceptLanguage = 'en',
    @Query('polygon_svg') int polygonSvg = 1,
    @Query('extratags') int extraTags = 1,
  });
}
