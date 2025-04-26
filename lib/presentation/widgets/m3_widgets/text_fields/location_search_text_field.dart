import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:trip_tally/domain/entities/location/location_entity.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/locations_format.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/maps/osm_bloc/osm_suggestions_cubit.dart';
import 'package:trip_tally/presentation/widgets/m3_widgets/rectangular_country_flag.dart';

class LocationSearchTextField extends StatefulWidget {
  const LocationSearchTextField({
    required this.onLocationSelected,
    this.initialLocation,
    super.key,
  });

  final LocationEntity? initialLocation;
  final void Function(String cityName, String countryCode) onLocationSelected;

  @override
  State<LocationSearchTextField> createState() => _LocationSearchTextFieldState();
}

class _LocationSearchTextFieldState extends State<LocationSearchTextField> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    if (widget.initialLocation != null) {
      _searchController.text = getTripDestinationFormat(widget.initialLocation!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) => TypeAheadField<PlaceEntity>(
        controller: _searchController,
        debounceDuration: 1.5.seconds,
        builder: (context, controller, fNode) {
          return Padding(
            padding: const EdgeInsets.all(AppDimensions.d16),
            child: CustomTextField(
              focusNode: fNode,
              prefixIcon: const Icon(Icons.search),
              controller: controller,
              labelText: context.tr.createTripSearchHint,
              validator: (value) => Validator.isFieldEmpty(value: value, context: context),
            ),
          );
        },
        itemSeparatorBuilder: (_, __) => const Divider(),
        decorationBuilder: (context, child) => Material(
          type: MaterialType.card,
          elevation: AppDimensions.d4,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(AppDimensions.d12),
          ),
          child: child,
        ),
        offset: Offset.zero,
        suggestionsCallback: (query) {
          if (query.isNotEmpty) {
            return context.read<OsmSuggestionsCubit>().getSuggestions(query);
          }
          return [];
        },
        itemBuilder: (context, location) => ListTile(
          leading: const Icon(Icons.location_on),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: Text(
                  getDestinationFormat(location),
                  style: context.tht.titleMedium,
                ),
              ),
              Flexible(
                child: RectangularCountryFlag(
                  countryCode: location.address.countryCode,
                ),
              ),
            ],
          ),
        ),
        onSelected: (location) {
          _searchController.text = getDestinationFormat(location);
          widget.onLocationSelected(location.name, location.address.countryCode);
        },
        constraints: const BoxConstraints(minWidth: 1000),
      );

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
