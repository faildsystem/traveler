import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed, required this.text, required this.borderRadius, required this.enabled});

  final VoidCallback onPressed;
  final String text;
  final double borderRadius;
  final bool enabled;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled? onPressed: null,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          enabled? const Color(0xFF1BBA85): const Color(0xFFB3B2B2),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
