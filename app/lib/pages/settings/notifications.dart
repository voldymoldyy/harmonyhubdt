import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Push Notifications'),
            value: true,
            onChanged: (bool value) {},
          ),
          Divider(),
          ListTile(
            title: Text('Notification Preferences'),
            leading: Icon(Icons.notifications),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
