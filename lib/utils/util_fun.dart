// utilfuntion
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class UtilFuntions {
  static void navigateTo(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
