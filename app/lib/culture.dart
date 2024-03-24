import 'package:app/components/Featured_card.dart';
import 'package:app/components/home_topbutton.dart';
import 'package:app/components/homeheading.dart';
import 'package:app/pages/culture%20blogs/blog1.dart';
import 'package:app/pages/culture%20blogs/blog10.dart';
import 'package:app/pages/culture%20blogs/blog2.dart';
import 'package:app/pages/culture%20blogs/blog3.dart';
import 'package:app/pages/culture%20blogs/blog4.dart';
import 'package:app/pages/culture%20blogs/blog5.dart';
import 'package:app/pages/culture%20blogs/blog6.dart';
import 'package:app/pages/culture%20blogs/blog7.dart';
import 'package:app/pages/culture%20blogs/blog8.dart';
import 'package:app/pages/culture%20blogs/blog9.dart';
import 'package:flutter/material.dart';

class Culture extends StatelessWidget {
  const Culture({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Culture Blogs"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            HomeTopButton(),
            HomeHeading(
              title: "Culture",
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
                    description:
                        "Navigating Cultural Differences in the Global Workplace",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog1()));
                    },
                  ),
                  FeatureCard(
                    title: "blog2",
                    description:
                        "Resolving Cultural Conflicts: Case Studies from Around the World",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog2()));
                    },
                  ),
                  FeatureCard(
                    title: "blog3",
                    description:
                        "The Impact of Cultural Sensitivity Training in Healthcare Settings",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog3()));
                    },
                  ),
                  FeatureCard(
                    title: "blog4",
                    description:
                        "Building Inclusive Communities: Lessons from Cultural Exchange Programs",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog4()));
                    },
                  ),
                  FeatureCard(
                    title: "blog5",
                    description:
                        "Cultural Diplomacy: Promoting Peace through Cultural Understanding",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog5()));
                    },
                  ),
                  FeatureCard(
                    title: "blog6",
                    description:
                        "Overcoming Language Barriers in Multicultural Environments",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog6()));
                    },
                  ),
                  FeatureCard(
                    title: "blog7",
                    description:
                        "Bridging the Gulf: Lessons Learned from Resolving Cultural Differences in International Business",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog7()));
                    },
                  ),
                  FeatureCard(
                    title: "blog8",
                    description:
                        "Cultural Harmony: How Communities Overcame Differences to Thrive Together",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog8()));
                    },
                  ),
                  FeatureCard(
                    title: "blog9",
                    description:
                        "Cultural Competence in Healthcare: Case Studies in Resolving Cross-Cultural Misunderstandings",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog9()));
                    },
                  ),
                  FeatureCard(
                    title: "blog10",
                    description:
                        "From Conflict to Collaboration: Diplomatic Success Stories in Resolving Cultural Disputes",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cultureblog10()));
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
