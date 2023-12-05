// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_article_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetArticleDetailsResponse _$GetArticleDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    GetArticleDetailsResponse()
      ..status = json['status'] as String?
      ..totalResults = json['total_results'] as int?
      ..articles = (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticlesBean.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sources = (json['sources'] as List<dynamic>?)
          ?.map((e) => SourcesBean.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetArticleDetailsResponseToJson(
        GetArticleDetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_results': instance.totalResults,
      'articles': instance.articles,
      'sources': instance.sources,
    };
