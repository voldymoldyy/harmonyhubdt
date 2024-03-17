import 'package:flutter/material.dart';

class Approunded extends StatelessWidget {
  final Function()? onTap;
  final IconData iconData;
  const Approunded({super.key, required this.onTap, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white30,
      borderRadius: BorderRadius.circular(40),
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: onTap,
        child: SizedBox(
          width: 56,
          height: 56,
          child: Icon(
            iconData,
          ),
        ),
      ),
    );
  }
}
