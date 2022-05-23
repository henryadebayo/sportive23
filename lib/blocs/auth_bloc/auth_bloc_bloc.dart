import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportive23/repo/model/user_model.dart';
part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBlocBloc() : super(null) {
    on<AuthBlocEvent>((event, emit) {

    });
  }
}
