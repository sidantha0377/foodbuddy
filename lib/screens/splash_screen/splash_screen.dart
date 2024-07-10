import 'package:flutter/material.dart';
import 'package:foodbuddy/screens/main_screen/main_screen.dart';
import 'package:foodbuddy/utils/util_fun.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      UtilFuntions.navigateTo(context, const MainScreen());
    }); //Futer.delay
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //backgroundColor: Color(0xfffed178),
      body: DecoratedBox(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/AppBack.png"), fit: BoxFit.cover)),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  // height: 250,
                  // ),
                  //Image(image: AssetImage("images/AppBack.png")),
                  Image(image: AssetImage("images/AppName.png")),
                  SizedBox(
                    height: 250,
                  ),
                ],
              ))),
    );
  }
}
