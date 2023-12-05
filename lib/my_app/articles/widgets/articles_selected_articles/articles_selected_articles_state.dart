part of 'articles_selected_articles_cubit.dart';

@freezed
class ArticlesSelectedArticlesState with _$ArticlesSelectedArticlesState {
  const factory ArticlesSelectedArticlesState.initial({
    GetArticleDetailsResponse? getArticleDetailsResponse,
    @Default(BooleanStatus.initial) BooleanStatus getArticleDetailsStatus,
    String? newsId
  }) = _Initial;
}
