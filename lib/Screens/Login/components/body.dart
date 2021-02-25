import 'package:babysit_app/Screens/Home/home_screen.dart';
import 'package:babysit_app/Screens/Login/components/background.dart';
import 'package:babysit_app/Screens/Sign%20Up/signup_screen.dart';
import 'package:babysit_app/components/already_have_an_account_check.dart';
import 'package:babysit_app/components/rounded_button.dart';
import 'package:babysit_app/components/rounded_email_field.dart';
import 'package:babysit_app/components/rounded_input_field.dart';
import 'package:babysit_app/components/rounded_password_field.dart';
import 'package:babysit_app/components/text_field_container.dart';
import 'package:babysit_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:babysit_app/domain/user.dart';
import 'package:babysit_app/providers/auth.dart';
import 'package:babysit_app/providers/user_provider.dart';
//import 'package:babysit_app/util/validators.dart';
//import 'package:babysit_app/util/widgets.dart';
import 'package:provider/provider.dart';
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 25),
        ),
          SizedBox(height: size.height*0.01),
          SvgPicture.asset("assets/icons/login.svg",
          height: size.height*0.25,
          ),
          SizedBox(height: size.height*0.01),
          RoundedEmailField(
            hintText: "Your Email",
            onChanged: (value){},
          ),
          RoundedPasswordField(
            onChanged: (value){},
          ),
          RoundedButton(
            text:"LOGIN" ,
            press: (){Navigator.push(context,
                MaterialPageRoute(
                  builder: (context){
                  return HomeScreen();
                  },
                ),
            );
            },
          ),
          SizedBox(height: size.height*0.01),
          AlreadyHaveAnAccountCheck(
            press: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return SignUpScreen();
            },
            ),
            );
            },
          ),
        ],
      ),
    ),
    ),
    );
  }
}









