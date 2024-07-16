import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodbuddy/screens/login_screen/login_screen.dart';
import 'package:foodbuddy/services/firebase_add_user.dart';
import 'package:foodbuddy/services/firebase_auth_methods.dart';
import 'package:foodbuddy/utils/util_fun.dart';
import 'package:foodbuddy/widgets/coustom_elevated_button.dart';
import 'package:foodbuddy/widgets/coustom_text_field.dart';
import 'package:foodbuddy/widgets/coustom_toast.dart';

class SignUpScreenNew extends StatefulWidget {
  const SignUpScreenNew({super.key});

  @override
  State<SignUpScreenNew> createState() => _SignUpScreenNewState();
}

class _SignUpScreenNewState extends State<SignUpScreenNew> {
  final TextEditingController _fname = TextEditingController();
  final TextEditingController _lname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _uname = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _repassword = TextEditingController();

  bool show = true;

  void signUpUser() async {
    bool valid;
    valid = await FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(
      email: _email.text,
      password: _password.text,
      context: context,
    );
    if (valid) {
      AddUser(_fname.text, _lname.text, _email.text, _uname.text)
          .addUserDetail();
    } else {
      CoustomToast("*incorrect email address or password");
    }
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
                              const SizedBox(height: 10),
                              CoustomTextField(
                                hight: 50,
                                labelText: 'Re-enter password',
                                controller: _repassword,
                                isObserve: show,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CoustomElevatedButton(
                                hight: 50,
                                text: "Sign up",
                                ontap: signUpUser,
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
