import 'package:json_annotation/json_annotation.dart';

part 'get_article_details_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetArticleDetailsRequest {
  String? newsId;

  factory GetArticleDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetArticleDetailsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetArticleDetailsRequestToJson(this);

  GetArticleDetailsRequest({this.newsId});
}
