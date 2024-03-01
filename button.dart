import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: ShapeDecoration(
        color: const Color(0xFFE6B014),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(
              color: Color(0xFF212121),
              fontSize: 14,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
              height: 0.10,
              letterSpacing: 0.20,
            ),
          ),
        ],
      ),
    );
  }
}
