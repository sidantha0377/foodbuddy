import 'package:flutter/material.dart';

class CoustomElevatedButton extends StatelessWidget {
  const CoustomElevatedButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.hight,
  });
  final String text;
  final Function() ontap;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: hight,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              //padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(EdgeInsets.symmetric(vertical: 55)),
              backgroundColor:
                  MaterialStateProperty.all<Color?>(const Color(0xff00ac56)),
              fixedSize:
                  MaterialStateProperty.all<Size?>(const Size(250.0, 62.5))),
          child: Text(text,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
              )),
        ));
  }
}
