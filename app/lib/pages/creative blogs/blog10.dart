import 'package:flutter/material.dart';

class creativeblog10 extends StatelessWidget {
  const creativeblog10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog10"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Discover the intersection of culture and style with a blog that explores the cultural influences and historical contexts behind fashion trends and movements. From traditional attire and ethnic textiles to contemporary street style and haute couture,  celebrates the diversity of sartorial expression across different cultures and time periods. Through fashion retrospectives, trend analyses, and profiles of designers and fashion icons, this blog offers readers a deeper understanding of how fashion reflects and shapes cultural identities and social norms.")
                ]),
          ),
        ),
      ),
    );
  }
}
