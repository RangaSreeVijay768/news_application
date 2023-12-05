part of 'articles_get_all_articles_cubit.dart';

@freezed
class ArticlesGetAllArticlesState with _$ArticlesGetAllArticlesState {
  const factory ArticlesGetAllArticlesState.initial({
    GetAllArticlesResponse? getAllArticlesResponse,
    @Default(BooleanStatus.initial) BooleanStatus getAllArticlesStatus,
    ArticlesGetArticleDetailsState? articlesGetArticleDetailsState,
    String? selectedArticle
  }) = _Initial;
}
