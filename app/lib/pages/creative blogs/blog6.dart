import 'package:flutter/material.dart';

class creativeblog6 extends StatelessWidget {
  const creativeblog6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theater Tales"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Embark on a visual journey through art, photography, and design with  a blog that explores the intersection of creativity and culture. From contemporary art exhibitions and photography showcases to design trends and architectural marvels,showcases the work of visual artists and innovators from around the world. Through stunning visuals, artist profiles, and discussions of artistic techniques, this blog invites readers to appreciate the beauty and complexity of visual expression across different mediums and disciplines.")
                ]),
          ),
        ),
      ),
    );
  }
}
