part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocState {}

class AuthBlocInitial extends AuthBlocState {}
class AuthBlocSignInn extends AuthBlocState {}

// final String emailAddress;
// final String password;
// // final UserModel User = UserModel();
// AuthSignIn({
//   this.emailAddress,
//   this.password
// });
