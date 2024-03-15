import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  StandardButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
