part of 'explore_news_bloc.dart';

// This is the event for the explore news
abstract class ExploreNewsEvent extends Equatable {
  const ExploreNewsEvent();

  @override
  List<Object> get props => [];
}

// This is the event for the searching news
class ExploreSearchNews extends ExploreNewsEvent {
  final String query;

  final int page;

  const ExploreSearchNews({
    required this.query,
    required this.page,
  });

  @override
  List<Object> get props => [query, page];
}

// This is the event for the searching/loading more news
class ExploreSearchNewsMore extends ExploreNewsEvent {
  const ExploreSearchNewsMore();
  @override
  List<Object> get props => [];
}
