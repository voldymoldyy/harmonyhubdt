import 'package:flutter/material.dart';

class cultureblog4 extends StatelessWidget {
  const cultureblog4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Building Inclusive Communities: Lessons from Cultural Exchange Programs"),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                    "This article could highlight the role of cultural exchange programs in promoting understanding and cooperation among individuals from different countries and backgrounds. It might feature personal anecdotes or interviews with participants in exchange programs, sharing how their experiences led to increased cultural awareness, empathy, and friendships across borders. The article could also explore the broader impact of these programs in fostering a more inclusive and interconnected world.")
              ]),
        )),
      ),
    );
  }
}
