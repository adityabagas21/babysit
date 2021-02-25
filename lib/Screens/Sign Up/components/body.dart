import 'package:babysit_app/Screens/Sign%20Up/components/background.dart';
import 'package:babysit_app/components/rounded_button.dart';
import 'package:babysit_app/components/rounded_email_field.dart';
import 'package:babysit_app/components/rounded_input_field.dart';
import 'package:babysit_app/components/rounded_password_field.dart';
import 'package:babysit_app/components/rounded_telephone_field.dart';
import 'package:babysit_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key key,
    @required this.child
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
    child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("SIGN UP",
          style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 25),
        ),
        SvgPicture.asset("assets/icons/signup.svg",
          height: size.height*0.35,
        ),
        RoundedInputField(hintText: "Name",
          onChanged: (value){},
        ),
        RoundedTelephoneField(hintText: "Phone Number",
          onChanged: (value){},
        ),
        RoundedEmailField(hintText: "Your Email",
          onChanged: (value){},
        ),
        RoundedPasswordField(
          onChanged: (value){},
        ),
        RoundedButton(
          text: "REGISTER",
          press: (){},
        ),
      ],
    ),
    ),
    ),
    );
  }
}


