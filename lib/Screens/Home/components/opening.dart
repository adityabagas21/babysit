import 'package:babysit_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class opening extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const opening({
    Key key, this.text, this.press, this.color, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding+20,
                right: kDefaultPadding+10),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Hire a Babysitter..",
                  style: TextStyle(
                    fontFamily: 'Assistant-Light',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 45, bottom: 30),
            padding: EdgeInsets.only(
                left: kDefaultPadding+20,
                right: kDefaultPadding+20),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("A babysitter is someone who temporarily\ncares for your children on behalf of the\nchildren’s parents",
                  style: TextStyle(
                    fontFamily: 'Assistant-Light',
                    color: kLightGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
         /* Container(
            margin: EdgeInsets.only(top: 150, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Services", textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Assistant-Light',
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),*/
        ],
      ),
    );
  }
}