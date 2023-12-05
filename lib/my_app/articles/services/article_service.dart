import 'package:chat_app/my_app/articles/models/get_all_articles/get_all_articles_request.dart';
import 'package:chat_app/my_app/articles/models/get_all_articles/get_all_articles_response.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_response.dart';
import 'package:chat_app/my_app/articles/repos/articles_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../news/models/news_details/news_details_request.dart';
import '../../news/models/news_details/news_details_response.dart';
import '../models/get_article_details/get_article_details_request.dart';

@singleton
class ArticleService {
  late ArticleRepo articlesRepo;

  ArticleService(){
    articlesRepo = GetIt.instance<ArticleRepo>();
  }

  Future<GetAllArticlesResponse> getAllArticles(GetAllArticlesRequest request) {
    return articlesRepo.getAllArticles(request);
  }

  Future<GetArticleDetailsResponse> getAllNewsDetails(GetArticleDetailsRequest request) {
    return articlesRepo.getAllNewsDetails(request);
  }
}
