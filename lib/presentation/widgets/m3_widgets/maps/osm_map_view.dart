import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/flutter_map_view.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/map_search_bar.dart';

class OsmMapView extends StatefulWidget {
  const OsmMapView({super.key});

  @override
  State<OsmMapView> createState() => _OsmMapViewState();
}

class _OsmMapViewState extends State<OsmMapView> {
  final MapController _mapController = MapController();
  Marker? _marker;
  List<PlaceEntity>? _locations;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMapView(
          mapController: _mapController,
          onTap: (_, __) {},
          markers: _marker != null ? [_marker!] : [],
        ),
        MapSearchBar(
          locations: _locations,
          onSuggestionTap: (entity, ctx) {},
          onQueryChanged: (query) {},
        ),
      ],
    );
  }
}
