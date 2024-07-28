import 'package:flutter/material.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class MapBottomSheet extends StatefulWidget {
  const MapBottomSheet({
    required this.mapLocation,
    super.key,
  });

  final PlaceEntity mapLocation;

  @override
  MapBottomSheetState createState() => MapBottomSheetState();
}

class MapBottomSheetState extends State<MapBottomSheet> {
  final GlobalKey _sheetKey = GlobalKey();
  final DraggableScrollableController _draggableController = DraggableScrollableController();
  final double _minHeight = 0;
  final double _midHeight = 0.5;
  final double _maxHeight = 1;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (ctx, constraints) => DraggableScrollableSheet(
          key: _sheetKey,
          controller: _draggableController,
          initialChildSize: _midHeight,
          minChildSize: _minHeight,
          maxChildSize: _maxHeight,
          snap: true,
          shouldCloseOnMinExtent: false,
          expand: false,
          snapSizes: [
            60 / constraints.maxHeight,
            0.5,
          ],
          builder: (context, scrollController) => DecoratedBox(
            decoration: BoxDecoration(
              color: context.thc.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                const SliverToBoxAdapter(
                  child: Text('Title'),
                ),
                SliverList.list(
                  children: const [
                    Text('Content'),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
