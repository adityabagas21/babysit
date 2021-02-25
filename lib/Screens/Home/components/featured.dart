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
          height: size.height,
          child: Stack(
            children: <Widget>[

              Container(
                    padding: EdgeInsets.only(
                    // left: kDefaultPadding+20,
                    // right: kDefaultPadding+20,
                    top: kDefaultPadding),
                    height: size.height,
                    decoration: BoxDecoration(color: kPrimaryLightColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    )
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Featured",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    ),
                    // Spacer(),
                    //
                    // IconButton(icon: Icon(Icons.settings, color: kPrimaryColor,size: 30,),
                    //     onPressed: (){}
                    // ),
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