import 'package:app/pages/bottomnav_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int CurrentIndex;
  final Function(int value) onTap;
  const BottomNavBar(
      {super.key, required this.CurrentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          BottomNavBaritem(
              text: "Home",
              iconData: Icons.home,
              isActive: CurrentIndex == 0,
              onTap: () {
                onTap(0);
              }),
          BottomNavBaritem(
              text: "Explore",
              iconData: Icons.explore,
              isActive: CurrentIndex == 1,
              onTap: () {
                onTap(1);
              }),
          BottomNavBaritem(
              text: "Profile",
              iconData: Icons.person,
              isActive: CurrentIndex == 2,
              onTap: () {
                onTap(2);
              }),
          BottomNavBaritem(
              text: "Settings",
              iconData: Icons.settings,
              isActive: CurrentIndex == 3,
              onTap: () {
                onTap(3);
              })
        ],
      ),
    );
  }
}
