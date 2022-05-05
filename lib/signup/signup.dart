import 'package:flutter/material.dart';
import 'package:login_page/constant/constant.dart';
import 'package:login_page/signin/signin.dart';


class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
              child: Column(children: [
                Text("Sign Up",
                    style: TextStyle(
                        fontSize: 24,
                        color: mPrimaryColor,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, bottom: 8.0, left: 50.0),
                  child: Row(
                    children: [
                      Text("Full Name",
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person_outline,
                                color: mPrimaryColor),
                            hintText: "Enter Your Name",
                            hintStyle: TextStyle(color: mTextFormColor)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, bottom: 8.0, left: 50.0),
                  child: Row(
                    children: [
                      Text("Phone No.",
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
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.phone_iphone_rounded,
                                color: mPrimaryColor),
                            hintText: "Enter Your Phone no.",
                            hintStyle: TextStyle(color: mTextFormColor)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, bottom: 8.0, left: 50.0),
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
                        style: TextStyle(color: Colors.white),
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
                  padding:
                      const EdgeInsets.only(top: 15.0, bottom: 8.0, left: 50.0),
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
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.vpn_key_outlined,
                                color: mPrimaryColor),
                            hintText: "Enter Your Password",
                            hintStyle: TextStyle(color: mTextFormColor)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, bottom: 8.0, left: 50.0),
                  child: Row(
                    children: [
                      Text("Confirm Password",
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
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.vpn_key_outlined,
                                color: mPrimaryColor),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: mTextFormColor)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                          Text('REGISTER',
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
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account? ",
                          style: TextStyle(
                              fontSize: 18,
                              color: mPrimaryColor,
                              fontWeight: FontWeight.w400)),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        child: Text("Sign in",
                            style: TextStyle(
                                fontSize: 18,
                                color: mPrimaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Signin(),
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
