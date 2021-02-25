import 'package:babysit_app/Screens/Home/components/header.dart';
import 'package:babysit_app/Screens/Home/components/pesan_sekarang.dart';
import 'package:flutter/material.dart';

import 'featured.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(

        children: <Widget>[
          header(size: size),
          pesan_sekarang(
            text: "Order Now !",
            press: (){},
          ),
          Featured(size: size),
        ]
      ),
    );
  }
}











