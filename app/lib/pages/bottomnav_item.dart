import 'package:flutter/material.dart';

class BottomNavBaritem extends StatelessWidget {
  final String text;
  final bool isActive;
  final IconData iconData;
  final Function() onTap;
  const BottomNavBaritem(
      {super.key,
      required this.text,
      required this.iconData,
      required this.isActive,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: isActive ? Colors.blue : null,
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            children: [
              Icon(
                iconData,
                color: isActive ? Colors.white : Colors.grey,
              ),
              const SizedBox(width: 7.0),
              Text(
                text,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.grey,
                ),
              ),
            ],
          )),
    );
  }
}
