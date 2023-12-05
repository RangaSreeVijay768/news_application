import 'package:chat_app/newsApi/widgets/news_api_controller.dart';
import 'package:chat_app/newsApi/widgets/news_api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/base_stateless_widget.dart';


class NewsApi extends BaseStatelessWidget<NewsApiController, NewsApiCubit, NewsApiState>{
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsApiCubit>(
        create: (context)=> createCubitAndAssignToController(context),
      child: BlocConsumer<NewsApiCubit, NewsApiState>(
        listener: (context, state){},
        builder: (context, state){
          return Scaffold();
        },
      ),
    );
  }

  @override
  NewsApiCubit createCubitAndAssignToController(BuildContext context) {
    NewsApiCubit newsApiCubit = NewsApiCubit();
    controller?.cubit = newsApiCubit;
    return newsApiCubit;
  }
}



class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tesla News'),
      ),
      body: BlocProvider(
        create: (context) => NewsCubit()..fetchNews(),
        child: const NewsList(),
      ),
    );
  }
}

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state.news.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: state.news.length,
            itemBuilder: (context, index) {
              final news = state.news[index];
              return ListTile(
                title: Text(news.title),
                subtitle: Text(news.publishedAt),
                onTap: () {
                  // Handle item tap, e.g., open a detailed view
                },
              );
            },
          );
        }
      },
    );
  }
}

