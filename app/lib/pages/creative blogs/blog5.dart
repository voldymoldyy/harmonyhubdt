import 'package:flutter/material.dart';

class creativeblog5 extends StatelessWidget {
  const creativeblog5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Gazetteer"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Explore the world through a cultural lens with  a blog that uncovers the hidden gems and cultural treasures of different countries and regions. From historical landmarks and architectural wonders to cultural festivals and local traditions, provides a glimpse into the unique identities and heritage of communities around the world. Through travel anecdotes, cultural insights, and personal reflections, this blog fosters cross-cultural understanding and appreciation for the richness of our global heritage.")
                ]),
          ),
        ),
      ),
    );
  }
}
