// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDetailsResponse _$NewsDetailsResponseFromJson(Map<String, dynamic> json) =>
    NewsDetailsResponse()
      ..status = json['status'] as String?
      ..totalResults = json['total_results'] as int?
      ..articles = (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticlesBean.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sources = (json['sources'] as List<dynamic>?)
          ?.map((e) => SourcesBean.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$NewsDetailsResponseToJson(
        NewsDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_results': instance.totalResults,
      'articles': instance.articles,
      'sources': instance.sources,
    };
