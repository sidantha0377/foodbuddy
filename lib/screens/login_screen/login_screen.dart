import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodbuddy/screens/signup_screan/signup_screan.dart';
import 'package:foodbuddy/utils/util_fun.dart';
import 'package:foodbuddy/widgets/coustom_elevated_button.dart';
import 'package:foodbuddy/widgets/coustom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //var grey;
    return Scaffold(
      //backgroundColor: const Color(0xfffed178),
      body: SingleChildScrollView(
        reverse: true,
        child: DecoratedBox(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/AppBack.png"),
                    fit: BoxFit.cover,
                    opacity: 0.37)),
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Image(image: AssetImage("images/AppName.png")),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),
                          height: 400,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              color: Colors.grey.shade200.withOpacity(0.75)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Log in",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xfffa7a18))),
                              const SizedBox(
                                height: 40,
                              ),
                              CoustomTextField(
                                hight: 50.0,
                                labelText: 'Email',
                                controller: _email,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'Password',
                                controller: _password,
                                isObserve: true,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CoustomElevatedButton(
                                hight: 50,
                                text: "Log in",
                                ontap: () {},
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  UtilFuntions.navigateTo(
                                      context, SignUpScrean());
                                },
                                child: const Text(
                                    "Don't have an account? Sign Up",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffa67932),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffa67932))),
                              )
                            ],
                          )),
                      const SizedBox(height: 120)
                    ]))),
      ),
    );
  }
}
