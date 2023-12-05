import 'package:chat_app/authenticate/authenticate.dart';
import 'package:chat_app/main.dart';
import 'package:chat_app/my_app/articles/widgets/articles_get_article_details/articles_get_article_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return Authenticate();
      }),


  GoRoute(
      path: '/articles/:id',
      builder: (BuildContext context, GoRouterState state) {
        String newsId = state.pathParameters['id']!;

        return ArticlesGetArticleDetails(
            newsId: newsId
        );
      } // Get
  ),

]);
