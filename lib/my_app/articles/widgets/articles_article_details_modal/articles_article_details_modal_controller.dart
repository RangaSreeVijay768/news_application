import '../../../../core/controllers/base_modal_controller.dart';
import 'articles_article_details_modal_cubit.dart';

class ArticlesArticleDetailsModalController
    extends BaseModalController<ArticlesArticleDetailsModalCubit> {

  openModal(){
    getChildCubit().openModal();
  }
}
