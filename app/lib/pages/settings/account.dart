import 'package:flutter/material.dart';

class AccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Edit Profile'),
            leading: Icon(Icons.person),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Change Password'),
            leading: Icon(Icons.lock),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Manage Email'),
            leading: Icon(Icons.email),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
