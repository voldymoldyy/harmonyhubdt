import 'package:app/components/Featured_card.dart';
import 'package:app/components/home_topbutton.dart';
import 'package:app/components/homeheading.dart';
import 'package:app/pages/creative%20blogs/blog1.dart';
import 'package:app/pages/creative%20blogs/blog10.dart';
import 'package:app/pages/creative%20blogs/blog2.dart';
import 'package:app/pages/creative%20blogs/blog3.dart';
import 'package:app/pages/creative%20blogs/blog4.dart';
import 'package:app/pages/creative%20blogs/blog5.dart';
import 'package:app/pages/creative%20blogs/blog6.dart';
import 'package:app/pages/creative%20blogs/blog7.dart';
import 'package:app/pages/creative%20blogs/blog8.dart';
import 'package:app/pages/creative%20blogs/blog9.dart';

import 'package:flutter/material.dart';

class Creative extends StatelessWidget {
  const Creative({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Creative Blogs"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            HomeTopButton(),
            HomeHeading(
              title: "Creative",
              trailing: TextButton(
                child: Text("View All"),
                onPressed: () {},
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
                    title: "blog 1",
                    description: "Cultural Chronicles",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const creativeblog1()));
                    },
                  ),
                  FeatureCard(
                    title: "blog2",
                    description: "Artistic Expressions",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog2()));
                    },
                  ),
                  FeatureCard(
                    title: "blog3",
                    description: "Literary Luminaries",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog3()));
                    },
                  ),
                  FeatureCard(
                    title: "blog4",
                    description: "Culinary Crossroads",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog4()));
                    },
                  ),
                  FeatureCard(
                    title: "blog5",
                    description: "Global Gazetteer",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog5()));
                    },
                  ),
                  FeatureCard(
                    title: "blog6",
                    description: "Theater Tales",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog6()));
                    },
                  ),
                  FeatureCard(
                    title: "blog7",
                    description: "Musical Mosaic",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog6()));
                    },
                  ),
                  FeatureCard(
                    title: "blog8",
                    description: "Festival Frenzy",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog7()));
                    },
                  ),
                  FeatureCard(
                    title: "blog9",
                    description: "Heritage Hub",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog8()));
                    },
                  ),
                  FeatureCard(
                    title: "blog10",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => creativeblog9()));
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
