// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signinuptest/signin/signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          unselectedWidgetColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: const Signin());
  }
}
