import 'package:app/buttons.dart';
import 'package:app/login_page.dart';
import 'package:app/textfield.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40),
                const Text(
                  "Welcome to the Hub!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                StandardTextField(hinttext: "Name", controller: namecontroller),
                const SizedBox(height: 20),
                StandardTextField(
                    hinttext: "Email", controller: emailcontroller),
                const SizedBox(height: 20),
                StandardTextField(
                  hinttext: "Password",
                  controller: passwordcontroller,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                StandardButton(text: "Register", onPressed: () {}),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a Member?"),
                    const SizedBox(width: 3),
                    GestureDetector(
                      child: const Text(
                        "Click here",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
