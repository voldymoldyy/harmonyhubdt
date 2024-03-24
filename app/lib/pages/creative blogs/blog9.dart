import 'package:flutter/material.dart';

class creativeblog9 extends StatelessWidget {
  const creativeblog9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Heritage Hub"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Explore the roots of human civilization with  a blog that delves into archaeological discoveries, historical landmarks, and cultural heritage sites from around the world. From ancient ruins and sacred monuments to UNESCO World Heritage sites and museum collections,  celebrates the legacy of past civilizations and the preservation of cultural heritage. Through site profiles, archaeological insights, and stories of cultural preservation, this blog fosters appreciation for the importance of safeguarding our shared human heritage for future generations.")
                ]),
          ),
        ),
      ),
    );
  }
}
