// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_details_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDetailsRequest _$NewsDetailsRequestFromJson(Map<String, dynamic> json) =>
    NewsDetailsRequest(
      newsId: json['news_id'] as String?,
    )
      ..first = json['first'] as int?
      ..count = json['count'] as int?
      ..columnName = json['column_name'] as String?
      ..columnOrder = json['column_order'] as String?
      ..apiKey = json['api_key'] as String?;

Map<String, dynamic> _$NewsDetailsRequestToJson(NewsDetailsRequest instance) =>
    <String, dynamic>{
      'first': instance.first,
      'count': instance.count,
      'column_name': instance.columnName,
      'column_order': instance.columnOrder,
      'news_id': instance.newsId,
      'api_key': instance.apiKey,
    };
