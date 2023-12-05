import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../newsApi.dart';

part 'news_api_state.dart';
part 'news_api_cubit.freezed.dart';

class NewsApiCubit extends Cubit<NewsApiState> {
  NewsApiCubit() : super(const NewsApiState.initial());


}

class NewsState {
  final List<News> news;
  NewsState(this.news);
}

class NewsCubit extends Cubit<NewsState> {
  final NewsRepository repository = NewsRepository();

  NewsCubit() : super(NewsState([]));

  Future<void> fetchNews() async {
    final news = await repository.fetchNews();
    emit(NewsState(news));
  }
}
