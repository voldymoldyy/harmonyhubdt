import 'package:flutter/material.dart';

class creativeblog3 extends StatelessWidget {
  const creativeblog3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Literary Luminaries"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Journey through the pages of great literature with  a blog dedicated to the written word and its enduring impact on culture and society. From classic novels and contemporary poetry to literary criticism and book recommendations,  explores the vast and rich tradition of literature from around the world. Through author interviews, literary analyses, and discussions of literary themes, this blog illuminates the power of storytelling to inspire, provoke, and unite readers across generations and borders.")
                ]),
          ),
        ),
      ),
    );
  }
}
