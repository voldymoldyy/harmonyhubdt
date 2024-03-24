import 'package:flutter/material.dart';

class creativeblog1 extends StatelessWidget {
  const creativeblog1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cultural Chronicles"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Delve into the diverse tapestry of global cultures with  a blog dedicated to exploring traditions, customs, and heritage from around the world. From celebrations and rituals to folklore and cuisine, this blog offers insights into the richness and diversity of human cultures. Through in-depth articles, cultural spotlights, and travel narratives,  invites readers to embark on a journey of discovery and appreciation for the cultural mosaic that defines our world.")
                ]),
          ),
        ),
      ),
    );
  }
}
