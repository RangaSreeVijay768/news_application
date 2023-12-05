import 'package:chat_app/my_app/articles/widgets/articles_article_details/articles_article_details.dart';
import 'package:chat_app/my_app/articles/widgets/articles_article_details_modal/articles_article_details_modal.dart';
import 'package:chat_app/my_app/articles/widgets/articles_article_details_modal/articles_article_details_modal_controller.dart';
import 'package:chat_app/my_app/themes/borders.dart';
import 'package:chat_app/my_app/themes/edge_insets.dart';
import 'package:chat_app/my_app/themes/fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../core/widgets/base_stateless_widget.dart';

import '../../../themes/app_colors.dart';
import '../../../themes/shadows.dart';
import 'articles_get_article_details_controller.dart';
import 'articles_get_article_details_cubit.dart';

class ArticlesGetArticleDetails extends BaseStatelessWidget<
    ArticlesGetArticleDetailsController,
    ArticlesGetArticleDetailsCubit,
    ArticlesGetArticleDetailsState> {
  String? newsId;

  ArticlesGetArticleDetails(
      {Key? key, super.controller, super.onStateChanged, this.newsId})
      : super(key: key);
  ArticlesArticleDetailsModalController articlesArticleDetailsModalController =
      ArticlesArticleDetailsModalController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticlesGetArticleDetailsCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<ArticlesGetArticleDetailsCubit,
          ArticlesGetArticleDetailsState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);

          return state.getArticleDetailsResponse != null
              ? Scaffold(
                  // backgroundColor: AppColors.white,
                  body: Container(
                    padding: edge_insets_16,
                    child: Column(
                      children: [
                        Expanded(
                            child: ListView.builder(
                                itemCount: state.getArticleDetailsResponse!
                                    .articles!.length,
                                itemBuilder: (context, index) {
                                  final article = state
                                      .getArticleDetailsResponse!
                                      .articles![index];
                                  return Container(
                                    margin: edge_insets_t_16,
                                    child: InkWell(
                                      onLongPress: () {
                                        getCubit(context).shareArticle(
                                            Uri.parse(article.url!));
                                      },
                                      onDoubleTap: () {
                                        getCubit(context)
                                            .selectArticle(article.title!);
                                        if (context.mounted) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                                duration: const Duration(
                                                    milliseconds: 800),
                                                content: Text(
                                                    "Successfully added to favourites")),
                                          );
                                        }
                                      },
                                      onTap: () {
                                        // articlesArticleDetailsModalController.openModal();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ArticlesArticleDetailsScreen(
                                                        url: article.url
                                                            .toString())));
                                      },
                                      child: Container(
                                        padding: edge_insets_14,
                                        decoration: BoxDecoration(
                                            color: AppColors.white,
                                            border: borders.b_5px_rainbow,
                                            borderRadius: borderRadius.br_10),
                                        child: Column(
                                          children: [
                                            ArticlesArticleDetailsModal(
                                              url: article.url.toString(),
                                              controller:
                                                  articlesArticleDetailsModalController,
                                            ),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        borderRadius.br_100,
                                                    child: Image.asset(
                                                      "images/${article.source!.id}.png",
                                                      width: 60,
                                                      height: 60,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Flexible(
                                                      child: Text(
                                                    article.title.toString(),
                                                    style: TextStyle(
                                                        fontSize:
                                                            Fonts.fontSize16,
                                                        fontWeight: Fonts.f500),
                                                  ))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 220,
                                              margin: edge_insets_y_16,
                                              child: article.urlToImage != null
                                                  ? Image.network(
                                                      article.urlToImage!,
                                                      fit: BoxFit.fill,
                                                    )
                                                  : Image.asset(
                                                      'images/no-image.png'),
                                            ),
                                            Container(
                                              child: Text(
                                                article.content != null
                                                    ? article.content!
                                                    : 'content is not available, click on article to view details',
                                                style: TextStyle(
                                                    fontSize: Fonts.fontSize16),
                                              ),
                                            ),
                                            Container(
                                              margin: edge_insets_t_16,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        padding:
                                                            edge_insets_y_10,
                                                        side: BorderSide(
                                                            color: AppColors
                                                                .bgPrimary),
                                                        backgroundColor: state
                                                                .selectedArticles
                                                                .contains(article.title)
                                                            ? AppColors
                                                                .bgLightBlue
                                                            : AppColors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    borderRadius
                                                                        .br_30)),
                                                    onPressed: () {
                                                      getCubit(context)
                                                          .selectArticle(article
                                                              .title!);
                                                      if (context.mounted) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                              duration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          800),
                                                              content: Text(
                                                                  "Successfully added to favourites")),
                                                        );
                                                      }
                                                    },
                                                    child: Icon(
                                                      state.selectedArticles
                                                              .contains(index)
                                                          ? Icons.thumb_up
                                                          : Icons
                                                              .thumb_up_outlined,
                                                      color: AppColors.textRed,
                                                    ),
                                                  )),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                      child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            AppColors.white,
                                                        padding:
                                                            edge_insets_y_10,
                                                        side: BorderSide(
                                                            color: AppColors
                                                                .bgPrimary),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    borderRadius
                                                                        .br_30)),
                                                    onPressed: () {},
                                                    child: const Icon(
                                                        Icons.comment),
                                                  )),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                      child: TextButton(
                                                    style: TextButton.styleFrom(
                                                        backgroundColor:
                                                            AppColors.white,
                                                        padding:
                                                            edge_insets_y_10,
                                                        side: BorderSide(
                                                            color: AppColors
                                                                .bgPrimary),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    borderRadius
                                                                        .br_30)),
                                                    onPressed: () {
                                                      getCubit(context)
                                                          .shareArticle(
                                                              Uri.parse(article
                                                                  .url!));
                                                    },
                                                    child:
                                                        const Icon(Icons.share),
                                                  )),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                })),
                      ],
                    ),
                  ),
                )
              : Scaffold(
                  body: Center(
                      child: Container(
                    height: 200,
                    margin: edge_insets_x_30,
                    padding: edge_insets_24,
                    decoration: BoxDecoration(
                        boxShadow: const [shadows.bs_primary],
                        color: AppColors.white,
                        borderRadius: borderRadius.br_10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoadingAnimationWidget.discreteCircle(
                            color: AppColors.bgPrimary,
                            size: 50,
                            secondRingColor: AppColors.bmiTracker,
                            thirdRingColor: AppColors.waterPrimary),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Loading $newsId \n Please wait",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize18),
                        )
                      ],
                    ),
                  )),
                );
        },
      ),
    );
  }

  @override
  ArticlesGetArticleDetailsCubit createCubitAndAssignToController(
      BuildContext context) {
    ArticlesGetArticleDetailsCubit cubit =
        ArticlesGetArticleDetailsCubit(context: context, newsId: newsId);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
