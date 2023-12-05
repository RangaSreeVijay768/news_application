import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/blocs/base_cubit.dart';

part 'articles_article_details_modal_content_state.dart';

part 'articles_article_details_modal_content_cubit.freezed.dart';

class ArticlesArticleDetailsModalContentCubit
    extends BaseCubit<ArticlesArticleDetailsModalContentState> {
  ArticlesArticleDetailsModalContentCubit({required super.context})
      : super(initialState: ArticlesArticleDetailsModalContentState.initial());
}
