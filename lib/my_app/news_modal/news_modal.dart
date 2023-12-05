import 'package:json_annotation/json_annotation.dart';

part 'news_modal.g.dart';

@JsonSerializable()
class NewsModel {
  String? status;
  int? totalResults;
  List<ArticlesBean>? articles;
  List<SourcesBean>? sources;

  NewsModel({this.status, this.totalResults, this.articles});

  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewsModelToJson(this);
}

@JsonSerializable()
class ArticlesBean {
  SourceBean? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticlesBean({this.source, this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt, this.content});

  factory ArticlesBean.fromJson(Map<String, dynamic> json) => _$ArticlesBeanFromJson(json);

  Map<String, dynamic> toJson() => _$ArticlesBeanToJson(this);
}

@JsonSerializable()
class SourcesBean {
  SourceBean? source;
  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;

  SourcesBean({this.source, this.id, this.name, this.description, this.url, this.category, this.country, this.language});

  factory SourcesBean.fromJson(Map<String, dynamic> json) => _$SourcesBeanFromJson(json);

  Map<String, dynamic> toJson() => _$SourcesBeanToJson(this);
}


@JsonSerializable()
class SourceBean {
  dynamic id;
  String? name;

  SourceBean({this.id, this.name});

  factory SourceBean.fromJson(Map<String, dynamic> json) => _$SourceBeanFromJson(json);

  Map<String, dynamic> toJson() => _$SourceBeanToJson(this);
}

