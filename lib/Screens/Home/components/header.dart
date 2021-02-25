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
          margin: EdgeInsets.only(bottom: 0.1),
          height: size.height*0.2,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(

                    left: kDefaultPadding+20,
                    right: kDefaultPadding+10),
                height: size.height*0.2-20,
                decoration: BoxDecoration(color: kPrimaryLightColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Hi, Moms!",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    ),
                    Spacer(),

                    IconButton(icon: Icon(Icons.settings, color: kPrimaryColor,size: 30,),
                        onPressed: (){}
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}