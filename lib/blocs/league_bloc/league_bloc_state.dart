part of 'league_bloc_bloc.dart';

abstract class LeagueBlocState extends Equatable {
  const LeagueBlocState();
  
  @override
  List<Object> get props => [];
}

class LeagueBlocInitial extends LeagueBlocState {}
