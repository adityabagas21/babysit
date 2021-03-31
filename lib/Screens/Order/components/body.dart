import 'package:babysit_app/Screens/Home/components/carousel.dart';
import 'package:babysit_app/Screens/Order/components/header.dart';
import 'package:babysit_app/Screens/Order/components/favorites.dart';
import 'package:babysit_app/Screens/Home/components/opening.dart';
import 'package:babysit_app/Screens/Home/components/pesan_sekarang.dart';
import 'package:babysit_app/Screens/Order/order_page.dart';

import 'package:flutter/material.dart';
//import 'featured.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            header(size: size),
           // Text('Your Favorites'),
            Favorites(),
          ]
      ),
    );
  }
}











