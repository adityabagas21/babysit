
import 'package:babysit_app/repository/app_repository.dart';
import 'package:bloc/bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc<LoginEvent, LoginState> extends Bloc{
  AppRepository _appRepository = AppRepository();

  LoginBloc({initialState: PostLoginInitial}) : super(initialState);

  @override
  Stream mapEventToState(event) async* {
    if(event is PostLoginEvent){
      //do something
      yield PostLoginLoading();

      try{
        //method yg mau di eksekusi
        final response = await _appRepository.postLogin(event.body);

        if(response != null){
            yield PostLoginLoaded(response: response);
        }else{
          yield PostLoginError(
              errorMessage: "Wrong Email or Password"
          );
        }

      }catch (error){
        //liat error
        print(error);
        yield PostLoginError(errorMessage: "Error");
      }
    }
  }

}