import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportive23/blocs/auth_/signIn_bloc/sign_in_bloc_bloc.dart';
import 'package:sportive23/repo/services.dart/auth_api_services.dart';

import '../../../repo/model/user_model.dart';

part 'sign_in_bloc_event.dart';
part 'sign_in_bloc_state.dart';

class SignInBlocBloc extends Bloc<SignInEvent, AuthSignInState> {
  SignInBlocBloc() : super(SignInInitial()) {
    on<SignInEvent>((event, emit) {
      if(event is SignIn){
        login(event.email, event.passWord);
      }
    });
  }


  Future<void> login(String email, String passWord) async {
    try {
      emit(SignInLoading());
      final authServices = AuthServices();
      final user = await authServices.signIn(email, passWord);
      emit(SignedIn(user: user));
    } catch (e) {
      emit(SignInError(errorMsg: e.toString()));
    }
  }

  Future<void> logOut()async{
    final authServices = AuthServices();
    await authServices.signOut();

  }


}