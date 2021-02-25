import 'package:babysit_app/Screens/Welcome/welcome_screen.dart';
import 'package:babysit_app/constants.dart';
import 'package:babysit_app/domain/user.dart';
import 'package:flutter/material.dart';
import 'package:babysit_app/Screens/Home/home_screen.dart';
import 'package:babysit_app/Screens/Login/login_screen.dart';
import 'package:babysit_app/Screens/Sign Up/signup_screen.dart';
//import 'package:babysit_app/pages/welcome.dart';
import 'package:babysit_app/providers/auth.dart';
import 'package:babysit_app/providers/user_provider.dart';
import 'package:babysit_app/util/shared_preference.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}



