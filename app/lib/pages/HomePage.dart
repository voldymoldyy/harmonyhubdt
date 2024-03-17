import 'package:app/components/home_topbutton.dart';
import 'package:app/components/homeheading.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
