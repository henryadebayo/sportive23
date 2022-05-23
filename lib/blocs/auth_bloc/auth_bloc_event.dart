part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocEvent {}

class AuthSignIn implements AuthBlocEvent{}
class AuthSignUP implements AuthBlocEvent{
  final String firstName;
  final String lastName;
  final String emailAddress;
  final String password;

  AuthSignUP({
    this.firstName,
    this.lastName,
    this.emailAddress,
    this.password
  });
}
class GoogleSignIn implements AuthBlocEvent{}
class FacebookSignIn implements AuthBlocEvent{}
class AuthSignOut implements AuthBlocEvent{}