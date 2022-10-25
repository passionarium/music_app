import 'package:flutter/material.dart';
import 'package:music_app/generated/l10n.dart';
import 'package:music_app/src/style/colors.dart';
import 'package:music_app/src/style/typography.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.validator,
    this.labelText,
    this.onChanged,
    super.key,
  });
  final String? Function(String? input) validator;
  final ValueChanged<String?>? onChanged;
  final String? labelText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      onChanged: (final value) {},
      validator: (final _) => widget.validator(_),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.brandDefault),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: widget.labelText,
        labelStyle: AppTypography.normal(color: AppColors.brandDefault),
      ),
    );
  }
}

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({
    required this.validator,
    super.key,
    this.onChanged,
  });
  final String? Function(String? input) validator;
  final ValueChanged<String?>? onChanged;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isVisible = false;
  @override
  Widget build(final BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: isVisible,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.brandDefault),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: S.current.password,
        labelStyle: AppTypography.normal(color: AppColors.brandDefault),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: Icon(
              isVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.blackDark900,
            ),
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
