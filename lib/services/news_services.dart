import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsServices {
  final Dio dio;

  const NewsServices({required this.dio});

  Future<List<ArticleMOdel>> topGetHeadLine({required String category}) async {
    return await Future.delayed(
      const Duration(seconds: 0),
      () async {
        try {
          Response response = await dio.get(
              'https://newsapi.org/v2/top-headlines?country=us&apiKey=43127776c8d4446ea91a1c6619eb228d&category=$category');

          Map<String, dynamic> jsonData = response.data;
          List<dynamic> articles = jsonData["articles"];
          List<ArticleMOdel> aritclesList = [];

          for (var article in articles) {
            ArticleMOdel articleModel = ArticleMOdel.fromJson(article);
            aritclesList.add(articleModel);
          }
          return aritclesList;
        } catch (e) {
          return [];
        }
      },
    );
  }
}
