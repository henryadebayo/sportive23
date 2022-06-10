import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportive23/repo/services.dart/auth_api_services.dart';
import '../../../repo/model/user_model.dart';
part 'sign_in_bloc_event.dart';
part 'sign_in_bloc_state.dart';

class SignInBloc extends Bloc<SignInEvent, AuthSignInState> {
  SignInBloc() : super(SignInInitial()) {
    initAuthState();
    on<SignInEvent>((event, emit) {
      if(event is SignIn){
        login(event.email, event.passWord);
      }
      if(event is SignOut){
        logOut();
      }
    });
  }


  Future<void> login(String email, String passWord) async {
    try {
      emit(SignInLoading());
      final authServices = AuthServices();
      final user = await authServices.signIn(email, passWord);
      print("THIS IS SIGN IN BLOC MESSAGE :::::${user.toString()}");
      emit(SignedIn(user: user));
    } catch (e) {
      emit(SignInError(errorMsg: e.toString()));
    }
  }

  Future<void> logOut()async{
    final authServices = AuthServices();
    await authServices.signOut();

  }

  Future<void> initAuthState()async{
    emit(SignInLoading());
    final authServices = AuthServices();
    final user = await authServices.getLoggedInUserData();
    if(user != null){
      emit(SignedIn(user: user ));
    }else{
      emit(SignInInitial());
    }
  }
}