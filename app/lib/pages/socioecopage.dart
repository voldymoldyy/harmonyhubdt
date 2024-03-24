import 'package:app/components/Featured_card.dart';
import 'package:app/components/home_topbutton.dart';
import 'package:app/components/homeheading.dart';
import 'package:app/pages/socio%20economic%20blogs/blog1.dart';
import 'package:app/pages/socio%20economic%20blogs/blog10.dart';
import 'package:app/pages/socio%20economic%20blogs/blog2.dart';
import 'package:app/pages/socio%20economic%20blogs/blog4.dart';
import 'package:app/pages/socio%20economic%20blogs/blog5.dart';
import 'package:app/pages/socio%20economic%20blogs/blog6.dart';
import 'package:app/pages/socio%20economic%20blogs/blog7.dart';
import 'package:app/pages/socio%20economic%20blogs/blog8.dart';
import 'package:app/pages/socio%20economic%20blogs/blog9.dart';

import 'package:flutter/material.dart';

class Socio_eco extends StatelessWidget {
  const Socio_eco({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Socio-Econmic"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            HomeTopButton(),
            HomeHeading(
              title: "Socio-Economic blogs",
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
                    description: "Description of feature 1",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const seblog1()));
                    },
                  ),
                  FeatureCard(
                    title: "blog2",
                    description: "Description of feature 2",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog2()));
                    },
                  ),
                  FeatureCard(
                    title: "blog3",
                    description: "Description of feature 3",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog2()));
                    },
                  ),
                  FeatureCard(
                    title: "blog4",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog4()));
                    },
                  ),
                  FeatureCard(
                    title: "blog5",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog5()));
                    },
                  ),
                  FeatureCard(
                    title: "blog6",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog6()));
                    },
                  ),
                  FeatureCard(
                    title: "blog7",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog7()));
                    },
                  ),
                  FeatureCard(
                    title: "blog8",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog8()));
                    },
                  ),
                  FeatureCard(
                    title: "blog9",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog9()));
                    },
                  ),
                  FeatureCard(
                    title: "blog10",
                    description: "Description of feature 4",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => seblog10()));
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
