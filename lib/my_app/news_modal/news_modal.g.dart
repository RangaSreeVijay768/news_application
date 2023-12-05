// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      status: json['status'] as String?,
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticlesBean.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..sources = (json['sources'] as List<dynamic>?)
        ?.map((e) => SourcesBean.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
      'sources': instance.sources,
    };

ArticlesBean _$ArticlesBeanFromJson(Map<String, dynamic> json) => ArticlesBean(
      source: json['source'] == null
          ? null
          : SourceBean.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$ArticlesBeanToJson(ArticlesBean instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };

SourcesBean _$SourcesBeanFromJson(Map<String, dynamic> json) => SourcesBean(
      source: json['source'] == null
          ? null
          : SourceBean.fromJson(json['source'] as Map<String, dynamic>),
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      category: json['category'] as String?,
      country: json['country'] as String?,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$SourcesBeanToJson(SourcesBean instance) =>
    <String, dynamic>{
      'source': instance.source,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
    };

SourceBean _$SourceBeanFromJson(Map<String, dynamic> json) => SourceBean(
      id: json['id'],
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SourceBeanToJson(SourceBean instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
