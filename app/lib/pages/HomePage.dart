import 'package:app/auth/auth_serivce.dart';
import 'package:app/components/home_topbutton.dart';
import 'package:app/components/homeheading.dart';
import 'package:flutter/material.dart';

void logout() {
  final _auth = AuthService();
  _auth.signOut();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      body: SafeArea(
          child: Column(
        children: [
          HomeTopButton(),
          HomeHeading(
              title: "Blogs",
              trailing: TextButton(
                child: Text('View All'),
                onPressed: () {},
              ))
        ],
      )),
    );
  }
}
