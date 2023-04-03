import 'package:get_it/get_it.dart';

import 'explore/explore_news_bloc.dart';

// This is the injection for the explore news bloc
class ExploreBlocInjection {
  static void init({
    required GetIt sl,
  }) {
    sl.registerFactory(() => ExploreNewsBloc(searchCase: sl()));
  }
}
