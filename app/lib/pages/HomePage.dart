import 'package:app/auth/auth_serivce.dart';
import 'package:app/components/Featured_card.dart';
import 'package:app/components/home_topbutton.dart';
import 'package:app/components/homeheading.dart';
import 'package:app/pages/ExplorePage.dart';
import 'package:app/pages/blogs/blog1.dart';
import 'package:app/pages/blogs/blog2.dart';
import 'package:app/pages/blogs/blog3.dart';
import 'package:app/pages/blogs/blog4.dart';
import 'package:flutter/material.dart';

void logout() {
  final _auth = AuthService();
  _auth.signOut();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      body: SafeArea(
        child: Column(
          children: [
            HomeTopButton(),
            HomeHeading(
              title: "Blogs",
              trailing: TextButton(
                child: Text('View All'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExplorePage()),
                  );
                },
              ),
            ),
            SizedBox(height: 10), // Add some spacing
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Number of cards per row
                padding: EdgeInsets.symmetric(horizontal: 10),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  FeatureCard(
                    title: "Culture Blogs",
                    description: "Description of feature 1",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const blog1()));
                    },
                  ),
                  FeatureCard(
                    title: "Creative Blogs",
                    description: "Description of feature 2",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => blog2()));
                    },
                  ),
                  FeatureCard(
                    title: "Socio Economic Blogs",
                    description: "Description of feature 3",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => blog3()));
                    },
                  ),
                  FeatureCard(
                    title: "more...",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => blog4()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
