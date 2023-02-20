import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:newsz/src/core/params/article_request.dart';
import 'package:newsz/src/core/utils/constants.dart';
import 'package:newsz/src/data/models/article_model.dart';
import 'package:newsz/src/domain/repositories/articles_repository.dart';

class HomeController extends GetxController {
  final apiCall = GetIt.I.get<ArticlesRepository>();
  final _articles = (List<ArticleModel>.empty()).obs;
  List<ArticleModel> get articles => _articles;
  @override
  void onInit() {
    fetchNewsFromApi();
    super.onInit();
  }

  dynamic fetchNewsFromApi() async {
    debugPrint("ApiCAll");
    const params = ArticleRequestParams(
        apiKey: kApiKey,
        language: 'en',
        category: 'general',
        page: 1,
        pageSize: 20);
    final response = await apiCall.getBreakingNewsArticles(params);
    response.articles?.forEach((element) {
      debugPrint(element.author);
    });
    _articles(response.articles);
  }
}
