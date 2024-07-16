import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodbuddy/utils/showSnackBar.dart';
import 'package:foodbuddy/widgets/coustom_toast.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;

  FirebaseAuthMethods(this._auth);
  // email sign up
  Future<bool> signUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    bool isValid = true;
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      isValid = false;
      String msg;
      if (e.code == 'weak-password') {
        msg = "error pass";
      } else if (e.code == 'email-already-in-use') {
        msg = "error email";
      } else {
        msg = e.code;
      }
    }
    return isValid;
  }

  Future<bool> logInWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    bool isValid = true;
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      isValid = false;
      //CoustomToast(e.message!);
    }
    return isValid;
  }
}
