import 'package:babysit_app/Screens/Home/home_screen.dart';
import 'package:babysit_app/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    Key key, this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color:  Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home,
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,size: 30,
              ),
              onPressed:()=> Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(icon: Icon(Icons.history, color: inActiveIconColor,size: 30,),
                onPressed: (){}
            ),
            IconButton(icon: Icon(Icons.favorite_border, color: inActiveIconColor,size: 30,),
                onPressed: (){}
            ),
            IconButton(icon: Icon(Icons.person_outline, color: inActiveIconColor,size: 30,),
                onPressed: (){}
            ),
          ],
        ),
      ),
    );
  }
}