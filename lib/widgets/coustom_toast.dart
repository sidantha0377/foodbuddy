import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CoustomToast {
  final String msg;
  CoustomToast(this.msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        textColor: const Color.fromARGB(255, 255, 0, 0),
        fontSize: 16.0);
  }
}
