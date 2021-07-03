import 'package:babysit_app/Screens/Home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyPage extends StatefulWidget {
  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Thank you for \n""trusting us",
                    style: TextStyle(
                      fontFamily: 'Assistant-Light',
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/babysit.JPG",
                  width: size.width*0.5,),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Payment has been\n""verified",
                    style: TextStyle(
                      fontFamily: 'Assistant-Light',
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Don't worry, you're secure. Your\n" +
                        "order confirmed shortly.\n" +
                        "Thank you!",
                    style: TextStyle(
                      fontFamily: 'Assistant-Light',
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 30),
                child: FlatButton(
                  color: Colors.purpleAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(10),
                  minWidth: 300,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
