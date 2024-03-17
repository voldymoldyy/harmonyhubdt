import 'package:flutter/material.dart';

class PrivacySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Privacy Policy'),
            leading: Icon(Icons.policy),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Data Usage'),
            leading: Icon(Icons.data_usage),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
