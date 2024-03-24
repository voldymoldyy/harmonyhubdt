import 'package:flutter/material.dart';

class creativeblog2 extends StatelessWidget {
  const creativeblog2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Artistic Expressions"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Immerse yourself in the world of art and creativity with a blog that celebrates artistic endeavors in all their forms. From visual arts and performing arts to literature and cinema, showcases the work of artists, creators, and visionaries who shape our cultural landscape. Through artist profiles, exhibition reviews, and explorations of artistic movements, this blog offers readers a deeper understanding of the role art plays in society and the human experience")
                ]),
          ),
        ),
      ),
    );
  }
}
