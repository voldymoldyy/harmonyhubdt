import 'package:app/components/app_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeTopButton extends StatelessWidget {
  const HomeTopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Approunded(onTap: () {}, iconData: Icons.menu),
          const Spacer(),
          Approunded(onTap: () {}, iconData: Icons.search),
          Approunded(onTap: () {}, iconData: Icons.notifications_outlined)
        ],
      ),
    );
  }
}
