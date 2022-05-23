part of 'news_bloc_bloc.dart';

@immutable
abstract class NewsEvent extends Equatable {
const NewsEvent();
@override
  List<Object> get props => [];
}
 class StartEvent extends NewsEvent{

 }
