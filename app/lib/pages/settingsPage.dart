import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Account'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              // Navigate to account settings page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSettingsPage()));
            },
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Navigate to notification settings page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationSettingsPage()));
            },
          ),
          ListTile(
            title: Text('Privacy'),
            leading: Icon(Icons.privacy_tip),
            onTap: () {
              // Navigate to privacy settings page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacySettingsPage()));
            },
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.info),
            onTap: () {
              // Navigate to about page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          // Add more settings options as needed
        ],
      ),
    );
  }
}

// Example of other settings pages
// class AccountSettingsPage extends StatelessWidget {}
// class NotificationSettingsPage extends StatelessWidget {}
// class PrivacySettingsPage extends StatelessWidget {}
// class AboutPage extends StatelessWidget {}
