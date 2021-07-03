import 'package:babysit_app/Screens/payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'detail_page.dart';

class FinalOrderPage extends StatefulWidget {
  @override
  _FinalOrderPageState createState() => _FinalOrderPageState();
}

class _FinalOrderPageState extends State<FinalOrderPage> {
  Widget _babysitter({String image, String age, String name}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150,
        margin: EdgeInsets.only(right: kDefaultPadding - 10),
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
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
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: Image.network(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    name + " , " + age,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "You're in a good hand",
                    style: TextStyle(
                      fontFamily: 'Assistant-Light',
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Container(
                child: _babysitter(
                    image:
                        'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                    name: 'Dee',
                    age: '25'),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                              fontFamily: 'Assistant-Light',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5, top: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Date",
                            style: TextStyle(
                              fontFamily: 'Assistant-Light',
                              color: kLightGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          )),
                    ),
                    Container(
                      width: 350,
                      height: 50,
                      margin: EdgeInsets.only(
                        bottom: 10,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        children: <Widget>[
                          Spacer(),
                          IconButton(
                              icon: Icon(Icons.date_range), onPressed: () {})
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(color: Colors.purpleAccent),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "From",
                              style: TextStyle(
                                fontFamily: 'Assistant-Light',
                                color: kLightGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              margin: EdgeInsets.only(
                                bottom: 10,
                                left: 10,
                                right: 10,
                                top: 5
                              ),
                              child: Row(
                                children: <Widget>[
                                  Spacer(),
                                  IconButton(
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      onPressed: () {})
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                border: Border.all(color: Colors.purpleAccent),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "To",
                          style: TextStyle(
                            fontFamily: 'Assistant-Light',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Until",
                              style: TextStyle(
                                fontFamily: 'Assistant-Light',
                                color: kLightGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              margin: EdgeInsets.only(
                                bottom: 10,
                                left: 10,
                                right: 10,
                                top: 5
                              ),
                              child: Row(
                                children: <Widget>[
                                  Spacer(),
                                  IconButton(
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      onPressed: () {})
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                                border: Border.all(color: Colors.purpleAccent),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5, top: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sub-Total",
                            style: TextStyle(
                              fontFamily: 'Assistant-Light',
                              color: kLightGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Rp. 120.000 x 3hrs",
                          style: TextStyle(
                            fontFamily: 'Assistant-Light',
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5, top: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Total",
                            style: TextStyle(
                              fontFamily: 'Assistant-Light',
                              color: kLightGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Rp. 360.000",
                          style: TextStyle(
                            fontFamily: 'Assistant-Light',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 30),
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
                                return PaymentPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Pay Now",
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
                              return DetailPage();
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
            ],
          ),
        ),
      ),
    );
  }
}
