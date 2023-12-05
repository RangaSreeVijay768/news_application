import 'package:chat_app/my_app/news_modal/news_modal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_article_details_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetArticleDetailsResponse extends NewsModel{

  factory GetArticleDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetArticleDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetArticleDetailsResponseToJson(this);

  GetArticleDetailsResponse();
}
