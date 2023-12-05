import 'package:chat_app/my_app/news_modal/news_modal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_all_articles_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllArticlesResponse extends NewsModel{

  factory GetAllArticlesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllArticlesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllArticlesResponseToJson(this);

  GetAllArticlesResponse();
}
