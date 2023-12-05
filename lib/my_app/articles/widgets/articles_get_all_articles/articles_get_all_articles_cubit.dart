import 'package:bloc/bloc.dart';
import 'package:chat_app/my_app/articles/models/get_all_articles/get_all_articles_request.dart';
import 'package:chat_app/my_app/articles/models/get_all_articles/get_all_articles_response.dart';
import 'package:chat_app/my_app/articles/widgets/articles_get_article_details/articles_get_article_details_cubit.dart';
import 'package:chat_app/my_app/news_modal/news_modal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/blocs/base_cubit.dart';
import '../../../../core/database/boolean_status.dart';
import '../../services/article_service.dart';

part 'articles_get_all_articles_state.dart';

part 'articles_get_all_articles_cubit.freezed.dart';

class ArticlesGetAllArticlesCubit
    extends BaseCubit<ArticlesGetAllArticlesState> {
  late ArticleService articleService;

  ArticlesGetAllArticlesCubit({required super.context, String? selectedArticle})
      : super(
            initialState:
                ArticlesGetAllArticlesState.initial(selectedArticle: 'abc-news')) {
    articleService = GetIt.instance<ArticleService>();
    getAllArticles(createRequestData());
  }

  GetAllArticlesRequest createRequestData() {
    final request = GetAllArticlesRequest();
    return request;
  }

  Future<GetAllArticlesResponse> getAllArticles(
      GetAllArticlesRequest request) async {
    return articleService.getAllArticles(request).then((value) {
      emit(state.copyWith(
          getAllArticlesResponse: value,
          getAllArticlesStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      emit(state.copyWith(getAllArticlesStatus: BooleanStatus.error));
      throw error;
    });
  }


}
