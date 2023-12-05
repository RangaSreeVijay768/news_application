import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/base_stateless_widget.dart';
import 'articles_selected_articles_controller.dart';
import 'articles_selected_articles_cubit.dart';



class ArticlesSelectedArticles
    extends BaseStatelessWidget<
        ArticlesSelectedArticlesController,
        ArticlesSelectedArticlesCubit,
        ArticlesSelectedArticlesState> {

  String newsId;

  ArticlesSelectedArticles({Key? key, super.controller, super.onStateChanged, required this.newsId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticlesSelectedArticlesCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ArticlesSelectedArticlesCubit,
          ArticlesSelectedArticlesState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }

  @override
  ArticlesSelectedArticlesCubit createCubitAndAssignToController(
      BuildContext context) {
    ArticlesSelectedArticlesCubit cubit = ArticlesSelectedArticlesCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
