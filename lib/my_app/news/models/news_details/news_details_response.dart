import 'package:chat_app/my_app/news_modal/news_modal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_details_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsDetailsResponse extends NewsModel{

  factory NewsDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsDetailsResponseToJson(this);

  NewsDetailsResponse();
}
