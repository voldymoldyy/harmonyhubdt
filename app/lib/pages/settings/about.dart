import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('App Version'),
            subtitle: Text('1.0.0'),
          ),
          Divider(),
          ListTile(
            title: Text('Terms of Service'),
            onTap: () {
              // Navigate to terms of service page
            },
          ),
          Divider(),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              // Navigate to contact us page
            },
          ),
          // Add more settings options as needed
        ],
      ),
    );
  }
}
