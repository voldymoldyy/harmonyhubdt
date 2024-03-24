import 'package:flutter/material.dart';

class creativeblog4 extends StatelessWidget {
  const creativeblog4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Culinary Crossroads"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Indulge your senses and savor the flavors of the world with  a blog that celebrates the intersection of food, culture, and identity. From traditional recipes and culinary traditions to food history and gastronomic adventures,  offers a feast for the senses. Through mouthwatering photographs, cooking tutorials, and stories behind the dishes, this blog invites readers on a culinary journey around the globe, exploring the diverse tastes and textures that define our shared human experience.")
                ]),
          ),
        ),
      ),
    );
  }
}
