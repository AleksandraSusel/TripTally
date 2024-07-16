import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/utils/enums/context_extensions.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.hintText,
    required this.controller,
    required this.validator,
    this.error,
    this.suffixIcon,
    this.hasPassword = false,
    super.key,
  });

  final String hintText;
  final TextEditingController controller;
  final String? error;
  final Widget? suffixIcon;
  final bool hasPassword;
  final String? Function(String?)? validator;

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
      validator: widget.validator,
      controller: widget.controller,
      obscureText: _obscurePassword,
      autocorrect: false,
      decoration: InputDecoration(
        errorText: widget.error,
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
        suffixIcon: widget.hasPassword
            ? IconButton(
                onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off_outlined : Icons.remove_red_eye_outlined,
                ),
              )
            : widget.suffixIcon,
        labelText: widget.hintText,
      ),
    );
  }
}
