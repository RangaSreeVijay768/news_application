import 'package:chat_app/core/network/dio_client.dart';
import 'package:chat_app/my_app/articles/models/get_all_articles/get_all_articles_request.dart';
import 'package:chat_app/my_app/articles/models/get_all_articles/get_all_articles_response.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_request.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_response.dart';
import 'package:chat_app/my_app/news/models/news_details/news_details_request.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../../news/models/news_details/news_details_response.dart';


part 'articles_repo.g.dart';


@RestApi()
abstract class ArticlesRestClient {
  factory ArticlesRestClient(Dio dio, {String baseUrl}) = _ArticlesRestClient;

  @GET("sources?language=en&apiKey=d261bd95c251422383cb55064355308a")
  Future<GetAllArticlesResponse> getAllArticles(@Queries() Map<String, dynamic> queryMap);

  @GET("top-headlines?sources={newsId}&apiKey=d261bd95c251422383cb55064355308a")
  Future<GetArticleDetailsResponse> getAllNewsDetails(@Path('newsId') String newsId);

}


@singleton
class ArticleRepo extends RestService{
  late ArticlesRestClient articlesRestClient;

  ArticleRepo() : super(){
    this.articlesRestClient = ArticlesRestClient(getDioClient(), baseUrl: "https://newsapi.org/v2/");
  }

  Future<GetAllArticlesResponse> getAllArticles(GetAllArticlesRequest request) {
    return articlesRestClient.getAllArticles(request.toJson());
  }

  Future<GetArticleDetailsResponse> getAllNewsDetails(GetArticleDetailsRequest request) {
    return articlesRestClient.getAllNewsDetails(request.newsId.toString());
  }

}


