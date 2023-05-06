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

  final _newsCategory = (List<ArticleModel>.empty()).obs;
  List<ArticleModel> get newsCategory => _newsCategory;

  final _isloading = false.obs;
  bool get isLoading => _isloading.value;

  final _categoryIsLoading = false.obs;
  bool get catergoryIsLoading => _categoryIsLoading.value;

  List<String> get newsCategoriesList =>
      ["Latest", "Business", "Politics", "Sports", "Entertainment"];

  final _selectedcategory = "Latest".obs;
  String get selectedcategory => _selectedcategory.value;

  @override
  void onInit() {
    fetchNewsFromApi();
    super.onInit();
  }

  dynamic fetchNewsFromApi() async {
    _isloading(true);
    debugPrint("ApiCAll");
    await fetchBreakingNews();
    await fetCatergorizedNews();
    _isloading(false);
  }

  dynamic fetchBreakingNews() async {
    const breakingNewsparams = ArticleRequestParams(
        apiKey: kApiKey, language: 'en', category: '', page: 1, pageSize: 20);
    final response = await apiCall.getBreakingNewsArticles(breakingNewsparams);
    _articles(response.articles);
  }

  dynamic fetCatergorizedNews() async {
    final newsCategory = ArticleRequestParams(
        apiKey: kApiKey,
        language: 'en',
        category: selectedcategory,
        page: 1,
        pageSize: 20);
    final newsCategories =
        await apiCall.getCategorizedNewsArticles(newsCategory);
    _newsCategory(newsCategories.articles);
  }

  void selectCategories(String category) async{
    _categoryIsLoading(true);
    _selectedcategory(category);
    await fetCatergorizedNews();
    _categoryIsLoading(false);
  }
}
