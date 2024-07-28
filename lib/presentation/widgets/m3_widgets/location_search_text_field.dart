import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:trip_tally/domain/entities/osm_map/place_entity.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';
import 'package:trip_tally/presentation/utils/locations_format.dart';
import 'package:trip_tally/presentation/utils/validators.dart';
import 'package:trip_tally/presentation/widgets/custom_text_field.dart';

class LocationSearchTextField extends StatefulWidget {
  const LocationSearchTextField({super.key});

  @override
  State<LocationSearchTextField> createState() => _LocationSearchTextFieldState();
}

class _LocationSearchTextFieldState extends State<LocationSearchTextField> {
  late TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => TypeAheadField<PlaceEntity>(
        emptyBuilder: (ctx) => const SizedBox.shrink(),
        builder: (ctx, controller, fNode) {
          _searchController = controller;

          return Padding(
            padding: const EdgeInsets.all(AppDimensions.d16),
            child: CustomTextField(
              focusNode: fNode,
              prefixIcon: const Icon(Icons.search),
              controller: _searchController,
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
        suggestionsCallback: (_) => null,
        itemBuilder: (context, location) => ListTile(
          leading: const Icon(Icons.location_on),
          title: Text(getDestinationFormat(location)),
        ),
        onSelected: (location) => _searchController.text = getDestinationFormat(location),
      );
}
