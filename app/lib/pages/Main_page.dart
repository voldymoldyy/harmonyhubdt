import 'package:app/pages/ExplorePage.dart';
import 'package:app/pages/Profile_page.dart';
import 'package:app/pages/bottom_nav_bar.dart';
import 'package:app/pages/settingsPage.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        children: const [
          HomePage(),
          ExplorePage(),
          ProfilePage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        CurrentIndex: _pageIndex,
        onTap: (value) {
          _pageController.jumpToPage(value);
        },
      ),
    );
  }
}
