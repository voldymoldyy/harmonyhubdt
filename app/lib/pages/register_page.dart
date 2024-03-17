import 'package:app/auth/auth_serivce.dart';
import 'package:app/components/buttons.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/components/textfield.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final void Function()? onTap;

  void register(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.registerWithEmailPassword(
          emailcontroller.text, passwordcontroller.text, context);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  Register({super.key, required this.onTap});
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
                StandardButton(
                    text: "Register", onPressed: () => register(context)),
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
                          MaterialPageRoute(
                              builder: (context) => Login(onTap: onTap)),
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
