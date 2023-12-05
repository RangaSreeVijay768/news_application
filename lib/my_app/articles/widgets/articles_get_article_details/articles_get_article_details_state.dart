part of 'articles_get_article_details_cubit.dart';

@freezed
class ArticlesGetArticleDetailsState with _$ArticlesGetArticleDetailsState {
  const factory ArticlesGetArticleDetailsState.initial(
      {GetArticleDetailsResponse? getArticleDetailsResponse,
      @Default(BooleanStatus.initial) BooleanStatus getArticleDetailsStatus,
      String? newsId,
        @Default([]) List<dynamic> selectedArticles,
      ArticlesGetAllArticlesState? articlesGetAllArticlesState}) = _Initial;
}
