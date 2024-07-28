import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';

/// Formats a `MapLocation` into a destination string, excluding any empty fields.
///
/// This function takes a `MapLocation` object and returns a string in the format:
/// `Name, State, Country, CountryCode`
/// Any fields that are empty or null are excluded from the output.
///
/// Example: `Athens, Attica, Greece, GR`
String getDestinationFormat(PlaceEntity location) {
  final parts = [
    location.name,
    location.address.state,
    location.address.country,
    location.address.countryCode.toUpperCase(),
  ];

  final nonEmptyParts = parts.where((part) => part != null && part.isNotEmpty).toList();

  return nonEmptyParts.join(', ');
}
