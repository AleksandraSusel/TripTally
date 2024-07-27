import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:trip_tally/environment.config.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/map_utils.dart';

class FlutterMapView extends StatelessWidget {
  const FlutterMapView({
    this.markers,
    this.mapController,
    this.onTap,
    super.key,
  });

  final MapController? mapController;
  final List<Marker>? markers;
  final void Function(TapPosition, LatLng)? onTap;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: mapController,
      options: MapOptions(
        onTap: onTap,
        initialZoom: 10,
      ),
      children: [
        TileLayer(
          urlTemplate: MapUtils.mapUrl,
          userAgentPackageName: packageName,
          tileProvider: CancellableNetworkTileProvider(),
        ),
        MarkerLayer(
          markers: markers != null ? markers! : [],
        ),
        CurrentLocationLayer(
          alignPositionOnUpdate: AlignOnUpdate.once,
          style: LocationMarkerStyle(
            marker: DefaultLocationMarker(
              child: Icon(
                Icons.navigation,
                color: context.thc.surface,
              ),
            ),
            markerSize: const Size.square(AppDimensions.d30),
            markerDirection: MarkerDirection.heading,
          ),
        ),
      ],
    );
  }
}
