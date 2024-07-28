import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class MapSearchBar extends StatelessWidget {
  const MapSearchBar({
    required this.onSuggestionTap,
    this.locations,
    super.key,
    this.onQueryChanged,
    this.actions,
    this.progress = false,
  });

  final ValueSetter<String>? onQueryChanged;
  final List<Widget>? actions;
  final List<PlaceEntity>? locations;
  final void Function(PlaceEntity, BuildContext) onSuggestionTap;
  final bool progress;

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      progress: progress,
      scrollPadding: const EdgeInsets.only(
        top: AppDimensions.d16,
        bottom: AppDimensions.d56,
      ),
      physics: const BouncingScrollPhysics(),
      openAxisAlignment: 10,
      debounceDelay: 200.ms,
      onQueryChanged: onQueryChanged,
      transition: CircularFloatingSearchBarTransition(),
      actions: actions ??
          [
            FloatingSearchBarAction.searchToClear(
              showIfClosed: false,
            ),
          ],
      builder: (ctx, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: context.thc.surface,
            elevation: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: locations != null
                  ? locations!
                      .map(
                        (location) => ListTile(
                          leading: const Icon(Icons.location_on),
                          title: Text(location.displayName),
                          onTap: () => onSuggestionTap(location, ctx),
                        ),
                      )
                      .toList()
                  : [],
            ),
          ),
        );
      },
    );
  }
}
