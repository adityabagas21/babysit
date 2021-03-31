import 'package:babysit_app/constants.dart';
import 'package:flutter/material.dart';

class pesan_sekarang extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const pesan_sekarang({
    Key key, this.text, this.press, this.color, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       //height: 90,
      width: double.infinity,
      margin: EdgeInsets.only(
          left: kDefaultPadding+20,
          right: kDefaultPadding+20,
          top: kDefaultPadding+10,
          bottom: kDefaultPadding+30
      ),
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        borderRadius: BorderRadius.circular(15),
      ),

      child: FlatButton(
        color: color,
        onPressed: press,
        child: Text(
    text,
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
      ),
      ),

    );

  }
}