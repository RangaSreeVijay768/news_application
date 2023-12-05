import 'package:bloc/bloc.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_request.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/blocs/base_cubit.dart';
import '../../../../core/database/boolean_status.dart';
import '../../services/article_service.dart';

part 'articles_selected_articles_state.dart';

part 'articles_selected_articles_cubit.freezed.dart';

class ArticlesSelectedArticlesCubit
    extends BaseCubit<ArticlesSelectedArticlesState> {
  late ArticleService articleService;
  ArticlesSelectedArticlesCubit({required super.context})
      : super(initialState: ArticlesSelectedArticlesState.initial()){
    articleService = GetIt.instance<ArticleService>();
  }

  GetArticleDetailsRequest createRequestData() {
        final request = GetArticleDetailsRequest();
        return request;
      }

    Future<GetArticleDetailsResponse> getSelectedArticles(
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
}
