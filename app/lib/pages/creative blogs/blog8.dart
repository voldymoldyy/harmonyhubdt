import 'package:flutter/material.dart';

class creativeblog8 extends StatelessWidget {
  const creativeblog8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Festival Frenzy"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Join the celebration with a blog that highlights cultural festivals and celebrations from around the world. From religious ceremonies and traditional rites of passage to contemporary music festivals and street parades, offers a kaleidoscopic view of global cultural expressions. Through event previews, photo essays, and firsthand accounts, this blog invites readers to immerse themselves in the sights, sounds, and flavors of festivals that showcase the vibrancy and diversity of human culture.")
                ]),
          ),
        ),
      ),
    );
  }
}
