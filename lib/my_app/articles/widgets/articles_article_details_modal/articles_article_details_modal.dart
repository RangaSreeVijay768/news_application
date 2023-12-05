import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../core/modals/base_modal/base_modal_widget.dart';
import 'articles_article_details_modal_content/articles_article_details_modal_content.dart';
import 'articles_article_details_modal_controller.dart';
import 'articles_article_details_modal_cubit.dart';
import 'articles_article_details_modal_data.dart';


class ArticlesArticleDetailsModal
    extends BaseModalWidget<
        ArticlesArticleDetailsModalController,
        ArticlesArticleDetailsModalCubit,
        ArticlesArticleDetailsModalState,
        ArticlesArticleDetailsModalData> {
  String url;
  ArticlesArticleDetailsModal(
      {Key? key, super.controller, super.onStateChanged, super.onModalClosed, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticlesArticleDetailsModalCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ArticlesArticleDetailsModalCubit,
          ArticlesArticleDetailsModalState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
          if(state.openModal!=null && state.openModal!){
            openModal(context: context, cubit: getCubit(context));
            getCubit(context).emit(state.copyWith(openModal: false));
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
  ArticlesArticleDetailsModalCubit createCubitAndAssignToController(
      BuildContext context) {
    ArticlesArticleDetailsModalCubit cubit = ArticlesArticleDetailsModalCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

  @override
  Widget getModalContentWidget({required BuildContext context}) {
    return ArticlesArticleDetailsModalContent(url: url,);
  }
}
