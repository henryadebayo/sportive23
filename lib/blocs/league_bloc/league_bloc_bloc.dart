import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'league_bloc_event.dart';
part 'league_bloc_state.dart';

class LeagueBlocBloc extends Bloc<LeagueBlocEvent, LeagueBlocState> {
  LeagueBlocBloc() : super(LeagueBlocInitial()) {
    on<LeagueBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
