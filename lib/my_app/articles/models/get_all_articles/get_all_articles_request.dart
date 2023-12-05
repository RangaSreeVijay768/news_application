import 'package:json_annotation/json_annotation.dart';

part 'get_all_articles_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class GetAllArticlesRequest {

  factory GetAllArticlesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetAllArticlesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllArticlesRequestToJson(this);

  GetAllArticlesRequest();
}
