import 'package:app/buttons.dart';
import 'package:app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HARMONHUB',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HarmonyHub'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "HARMONYHUB",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20.0)),
            StandardButton(
              text: "Get Started",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
