// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:login_page/constant/constant.dart';
import 'package:login_page/signup/signup.dart';
import 'package:url_launcher/url_launcher.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _HomescreenState();
}

class _HomescreenState extends State<Signin> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [mBackgroundColor1, mBackgroundColor2])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Text("Sign In",
                          style: TextStyle(
                              fontSize: 24,
                              color: mPrimaryColor,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 8.0, left: 50.0),
                        child: Row(
                          children: [
                            Text("Email",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: mPrimaryColor,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(8),
                        color: mFormColor,
                        elevation: 8.0,
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            color: mFormColor,
                            width: 300,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.email_outlined,
                                      color: mPrimaryColor),
                                  hintText: "Enter Your Email",
                                  hintStyle: TextStyle(color: mTextFormColor)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 8.0, left: 50.0),
                        child: Row(
                          children: [
                            Text("Password",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: mPrimaryColor,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(8),
                        color: mFormColor,
                        elevation: 8.0,
                        shadowColor: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            color: mFormColor,
                            width: 300,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.vpn_key_outlined,
                                      color: mPrimaryColor),
                                  hintText: "*******",
                                  hintStyle: TextStyle(color: mTextFormColor)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 55.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forgot Password?",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: mPrimaryColor,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Row(children: [
                          Checkbox(
                              checkColor: Colors.blue,
                              activeColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text("Remember Me",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: mPrimaryColor,
                                  fontWeight: FontWeight.bold)),
                        ]),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: mButtonColor,
                          ),
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('LOGIN',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: mBackgroundColor1,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text("-OR-",
                            style: TextStyle(
                                fontSize: 12,
                                color: mPrimaryColor,
                                fontWeight: FontWeight.w400)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text("Sign in with",
                            style: TextStyle(
                                fontSize: 12,
                                color: mPrimaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: _launchFacebook,
                                child: Image.asset("assets/icons/facebook.png",
                                    width: 50)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: GestureDetector(
                                onTap: _launchGoogle,
                                child: Image.asset("assets/icons/google.png",
                                    width: 50),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: mPrimaryColor,
                                    fontWeight: FontWeight.w400)),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(_SignUp());
                              },
                              child: Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: mPrimaryColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }

  void _launchFacebook() async {
    const url = 'https://facebook.com/login';
    if (!await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchGoogle() async {
    const url = 'https://accounts.google.com/servicelogin';
    if (!await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Route _SignUp() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Signup(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
