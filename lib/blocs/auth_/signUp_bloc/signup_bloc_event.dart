part of 'signup_bloc_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignUp extends SignupEvent{
  final String email;
  final String password;
  final String firstName;
  final String lastName;

  SignUp({
    this.email,
    this.password,
    this.firstName,
    this.lastName,
  });

}
