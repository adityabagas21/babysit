
import 'package:babysit_app/Screens/Order/components/body.dart';
import 'package:babysit_app/components/custombottomnavbar.dart';
import 'package:babysit_app/enums.dart';
import 'package:flutter/material.dart';
import 'package:babysit_app/domain/user.dart';
import 'package:babysit_app/providers/user_provider.dart';
import 'package:provider/provider.dart';


class OrderPage extends StatelessWidget {
  final User user;
  //static String routeName = "/home";

  const OrderPage({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Provider.of<UserProvider>(context).setUser(user);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavbar(selectedMenu: MenuState.home),
    );
  }
}
