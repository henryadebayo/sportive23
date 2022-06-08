// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:sportive23/repo/services.dart/auth_api_services.dart';
// part 'auth_bloc_event.dart';
// part 'auth_bloc_state.dart';
//
// class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
//   final AuthServices authServices;
//   AuthBloc({this.authServices}) : super(null) {
//
//     on<AuthBlocEvent>((event, emit)async{
//
//       if(event is AuthSignUP){
//         var response = await
//         authServices.SignUp(
//             event.emailAddress,
//             event.password,
//             event.firstName,
//             event.lastName);
//       }else if (event is AuthSignIn){
//         var response = await authServices.SignIn(
//             event.email,
//             event.password
//         );
//
//       }else if(event is AuthSignOut){
//         return null;
//         //TODO IMPLEMENT LOGOUT FUNCTION.
//       }
//     });
//   }
// }
