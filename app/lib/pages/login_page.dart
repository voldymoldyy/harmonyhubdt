import 'package:app/auth/auth_serivce.dart';
import 'package:app/components/buttons.dart';
import 'package:app/pages/register_page.dart';
import 'package:app/components/textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final void Function()? onTap;
  Login({super.key, required this.onTap});
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
          _emailcontroller.text, _passwordcontroller.text);
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
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
                  "Welcome back to the Hub!",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                StandardTextField(
                    hinttext: "Email", controller: _emailcontroller),
                const SizedBox(height: 20),
                StandardTextField(
                  hinttext: "Password",
                  controller: _passwordcontroller,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                StandardButton(text: "Login", onPressed: () => login(context)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a Member?"),
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
                              builder: (context) => Register(
                                    onTap: onTap,
                                  )),
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
