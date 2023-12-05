// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllArticlesResponse _$GetAllArticlesResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllArticlesResponse()
      ..status = json['status'] as String?
      ..totalResults = json['total_results'] as int?
      ..articles = (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticlesBean.fromJson(e as Map<String, dynamic>))
          .toList()
      ..sources = (json['sources'] as List<dynamic>?)
          ?.map((e) => SourcesBean.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetAllArticlesResponseToJson(
        GetAllArticlesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'total_results': instance.totalResults,
      'articles': instance.articles,
      'sources': instance.sources,
    };
