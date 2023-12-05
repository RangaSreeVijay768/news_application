import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/modals/base_modal/base_modal_cubit.dart';

part 'articles_article_details_modal_state.dart';

part 'articles_article_details_modal_cubit.freezed.dart';

class ArticlesArticleDetailsModalCubit
    extends BaseModalCubit<ArticlesArticleDetailsModalState> {
  ArticlesArticleDetailsModalCubit({required super.context})
      : super(initialState: ArticlesArticleDetailsModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    emit(state.copyWith(openModal: true));
  }
}
