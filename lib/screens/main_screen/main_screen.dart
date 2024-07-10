import 'package:flutter/material.dart';
import 'package:foodbuddy/screens/login_screen/login_screen.dart';
import 'package:foodbuddy/screens/signup_screan/signup_screan.dart';
import 'package:foodbuddy/utils/util_fun.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xfffed178),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //new Color(0xfffa7a18) ,
            const Image(image: AssetImage("images/AppName.png")),
            const SizedBox(height: 172.5),
            //new SizedBox(),
            //Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  UtilFuntions.navigateTo(context, LoginScreen());
                },
                style: ButtonStyle(
                    //padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(EdgeInsets.symmetric(vertical: 55)),
                    backgroundColor: MaterialStateProperty.all<Color?>(
                        const Color(0xfffa7a18)),
                    fixedSize: MaterialStateProperty.all<Size?>(
                        const Size(250.0, 62.5))),
                child: const Text("Log in",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff),
                    )),
              ),
            ),

            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  UtilFuntions.navigateTo(context, SignUpScrean());
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color?>(
                        const Color(0xfffa7a18)),
                    fixedSize: MaterialStateProperty.all<Size?>(
                        const Size(250.0, 62.5))),
                child: const Text("Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
