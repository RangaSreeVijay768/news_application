import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'newsApi.freezed.dart';
part 'newsApi.g.dart';

@freezed
class News with _$News {
  factory News({
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}



class NewsRepository {
  final String apiKey = "d261bd95c251422383cb55064355308a"; // Replace with your News API key

  Future<List<News>> fetchNews() async {
    final response = await http.get(
      Uri.parse(
        "https://newsapi.org/v2/everything?q=tesla&from=2023-09-13&sortBy=publishedAt&apiKey=$apiKey",
      ),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> articles = data['articles'];
      return articles.map((e) => News.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
