import 'package:flutter/material.dart';

import '../../../constants.dart';

class header extends StatelessWidget {
  const header({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 50),
          height: size.height*0.1,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding),
                height: size.height,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Who are you looking for?",
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

            ],

          ),

        ),
        //Divider(color: kLightGrey, indent: 30,endIndent: 30,thickness: 1)
      ],
    );
  }
}