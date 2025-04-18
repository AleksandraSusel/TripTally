import 'package:trip_tally/domain/entities/location/location_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:world_countries/world_countries.dart';

/// Formats a `MapLocation` into a destination string, excluding any empty fields.
///
/// This function takes a `MapLocation` object and returns a string in the format:
/// `Name, State, Country, CountryCode`
/// Any fields that are empty or null are excluded from the output.
///
/// Example: `Athens, Greece, GR`
String getDestinationFormat(PlaceEntity location) {
  final parts = [
    location.name,
    location.address.state,
    location.address.country,
  ];

  final nonEmptyParts = parts.where((part) => part != null && part.isNotEmpty).toList();

  return nonEmptyParts.join(', ');
}

String getTripDestinationFormat(LocationEntity location) {
  final String country = WorldCountry.maybeFromCodeShort(location.countryCode)?.name.name ?? location.countryCode;
  return '${location.cityName}, $country';
}
