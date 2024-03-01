import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required String hintText})
      : _hintText = hintText;

  final String _hintText;

  @override
  Widget build(BuildContext context) {
    // obscureText: true,
    return TextField(
      obscureText: _hintText.contains("Password"),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        filled: true,
        fillColor: Colors.white,
        labelStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
          letterSpacing: 2.0,
        ),
        hintText: _hintText,
        hintStyle: const TextStyle(fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
