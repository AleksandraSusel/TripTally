import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class DropdownSearchButton<T> extends StatefulWidget {
  const DropdownSearchButton({
    required this.onChanged,
    required this.items,
    required this.labelText,
    required this.helperText,
    required this.searchLabelText,
    this.selectedItem,
    this.validator,
    this.itemAsString,
    super.key,
  });

  final ValueSetter<T> onChanged;
  final List<T> items;
  final String labelText;
  final String helperText;
  final String searchLabelText;
  final T? selectedItem;
  final String? Function(T?)? validator;
  final String Function(T?)? itemAsString;

  @override
  DropdownSearchButtonState<T> createState() => DropdownSearchButtonState<T>();
}

class DropdownSearchButtonState<T> extends State<DropdownSearchButton<T>> {
  T? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.selectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      itemAsString: widget.itemAsString,
      items: widget.items,
      popupProps: PopupProps.dialog(
        showSearchBox: true,
        searchDelay: 0.ms,
        searchFieldProps: TextFieldProps(
          autofocus: true,
          decoration: InputDecoration(
            labelText: widget.searchLabelText,
            alignLabelWithHint: true,
            helperStyle: context.tht.titleSmall?.copyWith(
              fontSize: AppDimensions.d12,
              overflow: TextOverflow.ellipsis,
            ),
            labelStyle: context.tht.titleSmall,
            floatingLabelStyle: context.tht.titleSmall?.copyWith(
              color: context.thc.primary,
            ),
            isDense: true,
            errorStyle: context.tht.titleSmall?.copyWith(
              color: context.thc.error,
              fontSize: AppDimensions.d12,
            ),
            errorMaxLines: 2,
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: context.thc.error,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: context.thc.onSurface,
              ),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: context.thc.primary,
              size: 24,
            ),
          ),
        ),
        scrollbarProps: ScrollbarProps(
          thumbColor: context.thc.primary,
          radius: const Radius.circular(AppDimensions.d6),
        ),
        dialogProps: DialogProps(
          backgroundColor: context.thc.surfaceContainerHighest,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.d6),
            side: BorderSide(color: context.thc.primary, width: 0.4),
          ),
          insetPadding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.d16,
              ) +
              const EdgeInsets.only(
                top: AppDimensions.d68,
                bottom: AppDimensions.d16,
              ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.d16,
            vertical: AppDimensions.d20,
          ),
        ),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: context.tht.titleSmall,
          helperText: widget.helperText,
          helperStyle: context.tht.titleSmall?.copyWith(
            fontSize: AppDimensions.d12,
            overflow: TextOverflow.ellipsis,
          ),
          floatingLabelStyle: context.tht.titleSmall?.copyWith(
            color: context.thc.primary,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.thc.onSurface,
            ),
          ),
        ),
      ),
      selectedItem: _selectedItem,
      onChanged: (value) {
        setState(() {
          _selectedItem = value;
        });
        if (_selectedItem != null) {
          widget.onChanged(_selectedItem as T);
        }
      },
      validator: widget.validator,
    );
  }
}
