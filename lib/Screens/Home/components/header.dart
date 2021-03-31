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
          margin: EdgeInsets.only(top: 40),
          height: size.height*0.1,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    left: kDefaultPadding+20,
                    right: kDefaultPadding+10),
                    height: size.height,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Hi,\nLauren",
                      style: TextStyle(
                          fontFamily: 'Assistant-Light',
                          color: kLightGrey,
                          fontWeight: FontWeight.w300,
                          fontSize: 30,
                      ),
                    ),
                    Spacer(),
                    IconButton(icon: Icon(Icons.settings, color: kLightGrey,size: 30,),
                        onPressed: (){}
                        ),
                  ],
                ),

              ),

            ],

          ),

        ),
        Divider(color: kLightGrey, indent: 30,endIndent: 30,thickness: 1)
      ],
    );
  }
}