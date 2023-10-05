import 'package:flutter/material.dart';

class NewTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obsecureText;
  final double borderRadius;

  const NewTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.obsecureText,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(12.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        labelText: labelText,
      ),
    );
  }
}
