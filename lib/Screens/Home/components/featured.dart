import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Featured extends StatelessWidget {
  const Featured({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //margin: EdgeInsets.only(),
         // height: size.height,
        padding: EdgeInsets.only(
        left: kDefaultPadding+20,
        right: kDefaultPadding+20, bottom:  kDefaultPadding+20
        ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  bottom: kDefaultPadding-10
                ),
                child: Text('Recent Transaction', style: TextStyle(
                 fontFamily: 'Assistant-Light',
                   color: Colors.black,
                   fontWeight: FontWeight.w500,
                     fontSize: 20,
                  ),
             ),
         ),
              Container(
                  height: 150,
                  padding: EdgeInsets.only(
                  bottom: kDefaultPadding+100
                ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.purpleAccent),
                        bottom: BorderSide(color: Colors.purpleAccent),
                        right: BorderSide(color: Colors.purpleAccent),
                        left: BorderSide(color: Colors.purpleAccent)
                      ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      //width: BoxFit.fitWidth,
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 5,
                      ),
                      child: Text('Joan, 22', style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),

                      ),
                    ),
                    Container(
                      //width: BoxFit.fitWidth,
                      padding: EdgeInsets.only(
                        left: 80,
                        top: 5,
                      ),
                      child: Text('on 20/01/2021', style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                      ),
                      ),
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