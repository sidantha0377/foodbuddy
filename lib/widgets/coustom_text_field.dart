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
        //style: const TextStyle(color: Color(0xffa67932)),
        controller: controller,
        style: const TextStyle(
            color: Color(0xffa67932), fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            labelText: labelText,
            hintText: labelText,
            hintStyle:
                const TextStyle(color: Color.fromARGB(155, 166, 122, 50)),
            labelStyle: const TextStyle(color: Color(0xffa67932)),
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
