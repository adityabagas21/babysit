import 'package:babysit_app/Screens/verify_page.dart';
import 'package:babysit_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'final_order.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                    "One Step Closer..",
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
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Total",
                            style: TextStyle(
                              fontFamily: 'Assistant-Light',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
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
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38, bottom: 5, top: 40),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Transfer to BCA",
                            style: TextStyle(
                              fontFamily: 'Assistant-Light',
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 5, top: 40),
                      child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text(
                                "1652930723723",
                                style: TextStyle(
                                    fontFamily: 'Assistant-Light',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 28,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                "PT.Babysit",
                                style: TextStyle(
                                  fontFamily: 'Assistant-Light',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 40,left: 38,right: 38),
                                child: Text(
                                  "After payment, please wait a " +
                                      "moment until we verify your " +
                                      "payment..",
                                  style: TextStyle(
                                    fontFamily: 'Assistant-Light',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 38, bottom: 5, top: 40),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Upload Payment",
                                      style: TextStyle(
                                        fontFamily: 'Assistant-Light',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18,
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
                                        icon: Icon(Icons.arrow_circle_up), onPressed: () {})
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
                          )),
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
                                return VerifyPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Verify Payment",
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
                              return FinalOrderPage();
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
