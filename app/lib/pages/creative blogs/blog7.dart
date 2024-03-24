import 'package:flutter/material.dart';

class creativeblog7 extends StatelessWidget {
  const creativeblog7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Musical Mosaic"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Tune in to the rhythms of the world with  a blog that celebrates the diversity of musical traditions and genres from across the globe. From classical symphonies and folk melodies to contemporary fusion and experimental sounds,  showcases the universal language of music. Through artist features, album reviews, and explorations of musical cultures, this blog offers readers a deeper understanding of the role music plays in shaping identity, fostering connections, and expressing emotions across cultures and generations.")
                ]),
          ),
        ),
      ),
    );
  }
}
