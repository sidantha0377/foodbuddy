import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodbuddy/screens/login_screen/login_screen.dart';
import 'package:foodbuddy/services/firebase_auth_methods.dart';
import 'package:foodbuddy/utils/util_fun.dart';
import 'package:foodbuddy/widgets/coustom_elevated_button.dart';
import 'package:foodbuddy/widgets/coustom_text_field.dart';

class SignUpScrean extends StatelessWidget {
  SignUpScrean({super.key});

  final _fname = TextEditingController();
  final _lname = TextEditingController();
  final _email = TextEditingController();
  final _uname = TextEditingController();
  final _password = TextEditingController();
  final _repassword = TextEditingController();

  get context => null;

  //get context => null;

  void signUpUser() async {
    //await FirebaseAuthMethods().signUpWithEmail(
    // email: _email.text,
    // password: _password.text,
    //);
  }

  @override
  Widget build(BuildContext context) {
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
                        height: 20,
                      ),
                      const Image(image: AssetImage("images/AppName.png")),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),
                          height: 600,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                              color: Colors.grey.shade200.withOpacity(0.75)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Sign up",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xfffa7a18))),
                              const SizedBox(
                                height: 20,
                              ),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'First name',
                                controller: _fname,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'Last name ',
                                controller: _lname,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'Email',
                                controller: _email,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'User name',
                                controller: _uname,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'Password',
                                controller: _password,
                                isObserve: true,
                              ),
                              const SizedBox(height: 10),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'Re-enter password',
                                controller: _repassword,
                                isObserve: true,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CoustomElevatedButton(
                                hight: 50,
                                text: "Sign up",
                                ontap: () {},
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  UtilFuntions.navigateTo(
                                      context, LoginScreen());
                                },
                                child: const Text(
                                    "Already have an account? Login",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffa67932),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffa67932))),
                              )
                            ],
                          )),
                      const SizedBox(height: 20)
                    ]))),
      ),
    );
  }
}
