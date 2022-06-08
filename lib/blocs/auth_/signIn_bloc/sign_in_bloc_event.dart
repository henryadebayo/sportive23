part of 'sign_in_bloc_bloc.dart';

@immutable
abstract class SignInEvent {

}
class SignIn extends SignInEvent{
final String email;
final String passWord;

SignIn({
  @required this.email,
  @required this.passWord,
});
}

class SignOut extends SignInEvent{}
