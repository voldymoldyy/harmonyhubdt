import 'package:app/pages/Main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  Future<UserCredential> registerWithEmailPassword(
      String email, password, BuildContext context) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception((e.code));
    }
  }

  Future<void> signOut() async {
    return await _auth.signOut();
  }
}
