import 'package:babysit_app/domain/Login/Login_body.dart';

import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{
  //Equatable : kalo kita mau anggal satu event at a time
}

class PostLoginEvent extends LoginEvent{

  final LoginBody body;

  PostLoginEvent(this.body);

  @override
  List<Object> get props => [];

}