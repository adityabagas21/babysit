import 'package:babysit_app/domain/Login/Login_response.dart';
import 'package:babysit_app/domain/Register/Register_response.dart';

import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable{

}

class PostLoginLoading extends LoginState{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class PostLoginInitial extends LoginState{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class PostLoginLoaded extends LoginState{
  final LoginResponse response;

  PostLoginLoaded({this.response});

  @override
  // TODO: implement props
  List<Object> get props => [response];

}

class PostLoginError extends LoginState{
  final String errorMessage;

  PostLoginError({this.errorMessage});

  @override
  // TODO: implement props
  List<Object> get props => [errorMessage];
}