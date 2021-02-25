import 'package:babysit_app/Screens/Login/login_screen.dart';
import 'package:babysit_app/Screens/Sign%20Up/signup_screen.dart';
import 'package:babysit_app/Screens/Welcome/components/background.dart';
import 'package:babysit_app/components/rounded_button.dart';
import 'package:babysit_app/constants.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //height and width to screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Welcome to Babysit...",
          style:
          TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 25),

          ),
        SizedBox(height: size.height*0.03),
        Image.asset("assets/icons/nanny.jpg",
          height: size.height*0.45,
        ),
        SizedBox(height: size.height*0.05),
          RoundedButton(
            text: "LOGIN",
            press: () {Navigator.push(context,
                MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    },
                ),
              );
            },
          ),
        RoundedButton(
          text: "REGISTER",
          color: kPrimaryLightColor,
          textColor: Colors.black,
          press: () {
            Navigator.push(
              context, MaterialPageRoute(
              builder: (context){
                return SignUpScreen(
                );
                },
            ),
            );
            },
        ),
    ],
    ),
      ),
    );

  }
}



