import 'package:chat_app/core/database/boolean_status.dart';
import 'package:chat_app/my_app/articles/models/get_article_details/get_article_details_request.dart';
import 'package:chat_app/my_app/articles/widgets/articles_get_article_details/articles_get_article_details.dart';
import 'package:chat_app/my_app/articles/widgets/articles_get_article_details/articles_get_article_details_controller.dart';
import 'package:chat_app/my_app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';
import '../../../../Authenticate/Methods.dart';
import '../../../../core/widgets/base_stateless_widget.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/borders.dart';
import 'articles_get_all_articles_controller.dart';
import 'articles_get_all_articles_cubit.dart';

class ArticlesGetAllArticles extends BaseStatelessWidget<
    ArticlesGetAllArticlesController,
    ArticlesGetAllArticlesCubit,
    ArticlesGetAllArticlesState> {
  ArticlesGetAllArticles({Key? key, super.controller, super.onStateChanged})
      : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  ArticlesGetArticleDetailsController articlesGetArticleDetailsController = ArticlesGetArticleDetailsController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<ArticlesGetAllArticlesCubit,
          ArticlesGetAllArticlesState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            key: _key,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(width:,),
                  IconButton(
                    onPressed: (){
                      _key.currentState!.openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                  Text(state.selectedArticle!.toUpperCase()),
                  IconButton(icon: Icon(Icons.logout), onPressed: () => logOut(context))
                ],
              ),
            ),
            drawer: Drawer(
              child: Scaffold(
                appBar: AppBar(
                  title: Text("Select channel"),
                ),
                body: state.getAllArticlesResponse != null ?
                ListView.builder(
                    itemCount:
                    state.getAllArticlesResponse!.sources!.length,
                    itemBuilder: (context, index) {
                      final news =
                      state.getAllArticlesResponse!.sources![index];
                      return InkWell(
                        onTap:
                        (state.articlesGetArticleDetailsState?.getArticleDetailsStatus ==
                            BooleanStatus.pending)
                            ? null
                            : () async {
                          await articlesGetArticleDetailsController
                              .getChildCubit()
                              .getArticleDetails(
                              articlesGetArticleDetailsController
                                  .getChildCubit()
                                  .createRequestData(
                                  newsId: news.id));
                          getCubit(context).emitState(state.copyWith(selectedArticle: news.id));
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: edge_insets_16,
                          decoration: BoxDecoration(
                            border: borders.bb_1px_grey4,
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: ClipRRect(
                                  borderRadius: borderRadius.br_100,
                                  child: Image.asset("images/${news.id}.png"),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                state.getAllArticlesResponse!
                                    .sources![index].id
                                    .toString(),
                                style: TextStyle(
                                    fontSize: Fonts.fontSize16,
                                    fontWeight: Fonts.f500),
                              ),
                            ],
                          ),
                        ),
                      );
                    })
                    : SizedBox(),
              ),
            ),
            body: ArticlesGetArticleDetails(
              newsId: state.selectedArticle,
              controller: articlesGetArticleDetailsController,
            ),
          );
        },
      ),
    );
  }

  @override
  ArticlesGetAllArticlesCubit createCubitAndAssignToController(
      BuildContext context) {
    ArticlesGetAllArticlesCubit cubit = ArticlesGetAllArticlesCubit(
      context: context
    );
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
