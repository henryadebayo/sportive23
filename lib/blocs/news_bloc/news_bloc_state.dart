
part of 'news_bloc_bloc.dart';


@immutable
  abstract class NewsState extends Equatable {
  const NewsState();
  @override
  List<Object> get props => [];
}

class NewsInitialState extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsLoadedState extends NewsState {
  final List<JustNewsModel> news;

  const NewsLoadedState({
    @required this.news
});

}

class NewsErrorState extends NewsState {
  final String errorMessage;
  const NewsErrorState({
    @required this.errorMessage
});
}
