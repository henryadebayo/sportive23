import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sportive23/repo/model/news_model.dart';
import 'package:sportive23/repo/services.dart/news_api_services.dart';
part 'news_bloc_event.dart';
part 'news_bloc_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsServices newsServices;
  NewsBloc({@required this.newsServices}) : super(NewsInitialState()) {

    on<StartEvent>((event, emit)async {
      try{
        var response = await newsServices.getNews();
        emit(NewsLoadedState(news: response)
        );
      }catch(e){
        emit(
          NewsErrorState(errorMessage: "errorMessage")
        );
      }
    });
    add(StartEvent());
  }
}
