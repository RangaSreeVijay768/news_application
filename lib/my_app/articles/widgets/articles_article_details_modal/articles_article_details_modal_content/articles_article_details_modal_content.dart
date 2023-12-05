import 'package:chat_app/my_app/articles/widgets/articles_article_details/articles_article_details.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../../core/modals/base_modal_content/base_modal_content_widget.dart';
import '../articles_article_details_modal_data.dart';
import 'articles_article_details_modal_content_controller.dart';
import 'articles_article_details_modal_content_cubit.dart';


class ArticlesArticleDetailsModalContent
    extends BaseModalContent<
        ArticlesArticleDetailsModalContentController,
        ArticlesArticleDetailsModalContentCubit,
        ArticlesArticleDetailsModalContentState,
        ArticlesArticleDetailsModalData> {

  String url;
  ArticlesArticleDetailsModalContent(
      {Key? key, super.controller, super.onStateChanged, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticlesArticleDetailsModalContentCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ArticlesArticleDetailsModalContentCubit,
          ArticlesArticleDetailsModalContentState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.sizeOf(context).height/1.2,
              child: ArticlesArticleDetailsScreen(url: url),
            ),
          );
        },
      ),
    );
  }

  @override
  ArticlesArticleDetailsModalContentCubit createCubitAndAssignToController(
      BuildContext context) {
    ArticlesArticleDetailsModalContentCubit cubit = ArticlesArticleDetailsModalContentCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
