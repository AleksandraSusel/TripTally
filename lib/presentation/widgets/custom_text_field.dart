import 'package:flutter/material.dart';
import 'package:trip_tally/presentation/theme/app_colors.dart';
import 'package:trip_tally/presentation/theme/app_dimensions.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.hintText,
    required this.controller,
    required this.validator,
    super.key,
    this.error,
    this.suffixIcon,
    this.hasPassword = false,
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
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.d10),
      child: SizedBox(
        width: AppDimensions.d300,
        child: TextFormField(
          validator: widget.validator,
          controller: widget.controller,
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            errorText: widget.error,
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.red,
              ),
            ),
            suffixIcon: widget.hasPassword
                ? IconButton(
                    onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off_outlined : Icons.remove_red_eye_outlined,
                    ),
                    color: AppColors.cello,
                  )
                : widget.suffixIcon,
            hintText: widget.hintText,
          ),
        ),
      ),
    );
  }
}
