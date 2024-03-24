import 'package:app/auth/auth_serivce.dart';
import 'package:app/components/Featured_card.dart';
import 'package:app/components/home_topbutton.dart';
import 'package:app/components/homeheading.dart';
import 'package:app/creative.dart';
import 'package:app/culture.dart';
import 'package:app/more.dart';
import 'package:app/pages/ExplorePage.dart';
import 'package:app/pages/culture%20blogs/blog3.dart';
import 'package:app/pages/culture%20blogs/blog4.dart';
import 'package:app/pages/socioecopage.dart';
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
                    description:
                        "Culture blogs are online spaces where writers explore and analyze various aspects of society, including art, literature, music, film, fashion, and more.",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Culture()));
                    },
                  ),
                  FeatureCard(
                    title: "Creative Blogs",
                    description:
                        "Creative blogs are digital platforms where individuals or groups share innovative ideas, artistic inspiration, and unique perspectives on various creative endeavors.",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Creative()));
                    },
                  ),
                  FeatureCard(
                    title: "Socio Economic Blogs",
                    description:
                        "Socio-economic blogs are digital platforms where experts and enthusiasts analyze and discuss the intersection of society.",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Socio_eco()));
                    },
                  ),
                  FeatureCard(
                    title: "more...",
                    description:
                        "Create your Creator Account to publish your own blogs, increase reach and gain followers.",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => more()));
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
