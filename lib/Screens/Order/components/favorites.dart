//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import '../../../constants.dart';

class Favorites extends StatelessWidget {
  const Favorites({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      //height: 600,
      //padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(

        child: Stack(
          children: <Widget>[
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: kDefaultPadding+5),
                    child: Text('Your Favorites',

                      style: TextStyle(
                      fontFamily: 'Assistant-Light',
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    ),
                  ),
                ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: kDefaultPadding+5),
              child: Text('See All',

              style: TextStyle(
              fontFamily: 'Assistant-Light',
              color: Colors.grey,
              fontWeight: FontWeight.w300,
              fontSize: 18,),),
            ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child:
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(right: kDefaultPadding-10),
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20.0),
                                ),
                              border: Border.all(color: Colors.purpleAccent),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 160,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                      child: Image.network('https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                      'Dee, 25',
                                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                                  ),
                                    ),),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(right: 10),
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              border: Border.all(color: Colors.purpleAccent),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 160,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                      child: Image.network('https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Dee, 25',
                                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                                      ),
                                    ),),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(right: 10),
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20.0),
                              ),
                              border: Border.all(color: Colors.purpleAccent),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 160,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                                      child: Image.network('https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child:
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Dee, 25',
                                        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
                                      ),
                                    ),),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              /*ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
              ],
            ),*/
        ),
    ],
    ),
    ),
    );



      /*ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
        color: Colors.red,
      ),
      Container(
        width: 160.0,
        color: Colors.blue,
      ),
      Container(
        width: 160.0,
        color: Colors.green,
      ),
      Container(
        width: 160.0,
        color: Colors.yellow,
      ),
      Container(
        width: 160.0,
        color: Colors.orange,
      ),
      ],
    ),*/


  }
}