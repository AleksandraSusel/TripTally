import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.labelText,
    this.validator,
    this.controller,
    this.suffixIcon,
    this.hasPassword = false,
    this.onTap,
    this.readOnly,
    this.textCapitalization,
    super.key,
    this.prefixIcon,
    this.focusNode,
    this.textInputType,
    this.initialValue,
    this.helperText,
  });

  final String labelText;
  final String? initialValue;
  final String? helperText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool hasPassword;
  final bool? readOnly;
  final TextCapitalization? textCapitalization;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final TextInputType? textInputType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscurePassword;

  @override
  void initState() {
    super.initState();
    _obscurePassword = widget.hasPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      keyboardType: widget.textInputType,
      onTap: widget.onTap,
      focusNode: widget.focusNode,
      validator: widget.validator,
      controller: widget.controller,
      obscureText: _obscurePassword,
      autocorrect: false,
      textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
      readOnly: widget.readOnly ?? false,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        helperText: widget.helperText,
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
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.hasPassword
            ? IconButton(
                onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off_outlined : Icons.remove_red_eye_outlined,
                ),
              )
            : widget.suffixIcon,
        labelText: widget.labelText,
      ),
    );
  }
}
