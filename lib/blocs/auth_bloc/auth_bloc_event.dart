part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocEvent {}

class AuthBlocSignIn extends AuthBlocEvent{}
class AuthBlocSignOut extends AuthBlocEvent{}