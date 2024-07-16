import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodbuddy/screens/home_screen/home_screen.dart';
//import 'package:foodbuddy/screens/signup_screan/signup_screan.dart';
import 'package:foodbuddy/screens/signup_screan/signup_screan2.dart';
import 'package:foodbuddy/services/firebase_auth_methods.dart';
import 'package:foodbuddy/utils/util_fun.dart';
import 'package:foodbuddy/widgets/coustom_elevated_button.dart';
import 'package:foodbuddy/widgets/coustom_text_field.dart';
import 'package:foodbuddy/widgets/coustom_toast.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();

  final _password = TextEditingController();

  bool show = true;

  void logInUser() async {
    bool login = await FirebaseAuthMethods(FirebaseAuth.instance)
        .logInWithEmail(
            email: _email.text, password: _password.text, context: context);
    if (login) {
      CoustomToast("Sucsessfull Log in!");
      UtilFuntions.navigateTo(context, const HomeScreen());
    } else {
      CoustomToast("*incorrect email address or password");
    }
  }

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
                              SizedBox(
                                height: 50,
                                child: TextField(
                                  obscureText: show,
                                  controller: _password,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffa67932)),
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        color: const Color(0xffa67932),
                                        icon: Icon(show
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                        onPressed: () {
                                          setState(
                                            () {
                                              show = !show;
                                            },
                                          );
                                        },
                                      ),
                                      //fillColor: Color(0xffa67932),
                                      hintText: "Password",
                                      hintStyle: const TextStyle(
                                        color:
                                            Color.fromARGB(155, 166, 122, 50),
                                      ),
                                      labelStyle: const TextStyle(
                                          color: Color(0xffa67932)),
                                      labelText: "Password",
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Color(0xffa67932))),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                              color: Color(0xffa67932)))),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CoustomElevatedButton(
                                hight: 50,
                                text: "Log in",
                                ontap: logInUser,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  UtilFuntions.navigateTo(
                                      context, SignUpScreenNew());
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
