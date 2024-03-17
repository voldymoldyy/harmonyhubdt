import 'package:app/pages/login_page.dart';
import 'package:app/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showloginpage = true;
  void togglePages() {
    setState(
      () {
        showloginpage = !showloginpage;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return Login(
        onTap: togglePages,
      );
    } else {
      return Register(
        onTap: togglePages,
      );
    }
  }
}
