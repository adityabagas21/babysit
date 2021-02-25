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
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),

      child: FlatButton(
        color: color,
        onPressed: press,
        child: Text(
    text,
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 36),
      ),
      ),
    );
  }
}