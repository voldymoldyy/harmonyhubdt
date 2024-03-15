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
      title: 'Flutter Home Page',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "HARMONYHUB",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 20.0)),
              StandardButton(
                  text: "Get Started",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  })
            ]),
      ),
    );
  }
}
