import 'package:babysit_app/Screens/Order/order_page.dart';
import 'package:babysit_app/Screens/final_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.5,
                width: size.width,
                margin: EdgeInsets.only(bottom: 10),
                //color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.5,
                      width: size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: 5),
                child: Container(
                  margin: EdgeInsets.only(
                      left: 20, right: kDefaultPadding - 10, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Dee, 25",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      VerticalDivider(color: Colors.black),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.location_on_outlined),
                            Text(
                              "Jakarta",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                indent: 20.0,
                endIndent: 20,
              ),
              Column(
                children: <Widget>[
                  Container(
                    //height: 150,
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 38, right: 38),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Dee is someone who temporarily " +
                                  "cares for your children on behalf of " +
                                  "you",
                              style: TextStyle(
                                fontFamily: 'Assistant-Light',
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 38, top: 20, bottom: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Language",
                                style: TextStyle(color: kLightGrey),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "English",
                              style: TextStyle(
                                fontFamily: 'Assistant-Light',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Bahasa",
                              style: TextStyle(
                                fontFamily: 'Assistant-Light',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Chinese",
                              style: TextStyle(
                                fontFamily: 'Assistant-Light',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40, top: 20, bottom: 5),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Race",
                                style: TextStyle(color: kLightGrey),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40, bottom: 20),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Javanese",
                              style: TextStyle(
                                fontFamily: 'Assistant-Light',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Rp. 120.000/hr",
                style: TextStyle(
                  fontFamily: 'Assistant-Light',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 5),
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
                          return FinalOrderPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Hire Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 30),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: FlatButton(
                  color: kPesanSekarang,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(10),
                  hoverColor: Colors.purpleAccent,
                  minWidth: 300,
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OrderPage();
                      },
                    ),
                  );},
                  child: Text(
                    "Back",
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
