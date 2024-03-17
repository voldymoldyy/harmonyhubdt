import 'package:flutter/material.dart';

class StandardTextField extends StatelessWidget {
  final String hinttext;
  final bool obscureText;
  final TextEditingController controller;

  StandardTextField(
      {required this.hinttext,
      this.obscureText = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.grey, width: 1.0)),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hinttext,
            ),
            obscureText: obscureText,
          ),
        ),
      ],
    );
  }
}
