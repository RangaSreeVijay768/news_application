import 'package:chat_app/core/models/common/sorted_paginated_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_details_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsDetailsRequest extends SortedPaginatedRequest{
  String? newsId;
  String? apiKey;

  factory NewsDetailsRequest.fromJson(Map<String, dynamic> json) =>
      _$NewsDetailsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NewsDetailsRequestToJson(this);

  NewsDetailsRequest({this.newsId});
}
