// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoustomTextField extends StatelessWidget {
  const CoustomTextField({
    required this.hight,
    required this.labelText,
    required this.controller,
    this.isObserve = false,
    super.key,
  });

  final String labelText;
  final TextEditingController controller;
  final bool isObserve;
  final double hight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      child: TextField(
        obscureText: isObserve,
        controller: controller,
        //style: TextStyle(color: Color(0xffa67932)),
        decoration: InputDecoration(
            labelText: labelText,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xffa67932))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xffa67932)))),
      ),
    );
  }
}
