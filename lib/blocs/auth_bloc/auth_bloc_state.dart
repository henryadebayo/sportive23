part of 'auth_bloc.dart';

@immutable
abstract class AuthBlocState {}

class AuthLoading extends AuthBlocState {}

class AuthSuccessful extends AuthBlocState {}

class AuthFailed extends AuthBlocState{}
