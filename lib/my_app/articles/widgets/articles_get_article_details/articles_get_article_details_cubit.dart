import 'package:bloc/bloc.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_request.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../core/blocs/base_cubit.dart';
import '../../../../core/database/boolean_status.dart';
import '../../../news/models/news_details/news_details_response.dart';
import '../../services/article_service.dart';
import '../articles_get_all_articles/articles_get_all_articles_cubit.dart';

part 'articles_get_article_details_state.dart';

part 'articles_get_article_details_cubit.freezed.dart';

class ArticlesGetArticleDetailsCubit
    extends BaseCubit<ArticlesGetArticleDetailsState> {
  late ArticleService articleService;
  ArticlesGetArticleDetailsCubit({required super.context, String? newsId})
      : super(initialState: ArticlesGetArticleDetailsState.initial(newsId: newsId)){
    articleService = GetIt.instance<ArticleService>();
    getArticleDetails(createRequestData());
  }


  GetArticleDetailsRequest createRequestData({
    String? newsId
  }) {
    final request = GetArticleDetailsRequest(
        newsId: newsId ?? state.newsId
    );
    return request;
  }

  Future<GetArticleDetailsResponse> getArticleDetails(
      GetArticleDetailsRequest request) async {
    return articleService.getAllNewsDetails(request).then((value) {
      emit(state.copyWith(
          getArticleDetailsResponse: value,
          getArticleDetailsStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getArticleDetailsStatus: BooleanStatus.error));
      throw error;
    });
  }

  void selectArticle(String id) {
    final List<dynamic> selectedExercises = List.from(state.selectedArticles);

    if (selectedExercises.contains(id)) {
      selectedExercises.remove(id);
    } else {
      selectedExercises.add(id);
    }

    emit(state.copyWith(selectedArticles: selectedExercises));
  }

  void shareArticle(Uri uri) async {
    await Share.shareUri(uri);
  }


}
