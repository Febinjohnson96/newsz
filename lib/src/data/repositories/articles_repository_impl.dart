import 'package:newsz/src/core/params/article_request.dart';
import 'package:newsz/src/data/data_sources/remote/api_provider.dart';
import 'package:newsz/src/data/models/breaking_news_response_model.dart';
import 'package:newsz/src/domain/repositories/articles_repository.dart';

class ArticlesRepositoryImpl implements ArticlesRepository {
  final ApiProvider _apiProvider;
  const ArticlesRepositoryImpl(this._apiProvider);

  @override
  Future<BreakingNewsResponseModel> getBreakingNewsArticles(
      ArticleRequestParams params) async {
    final response = await _apiProvider.get(
        endpoint: "/v2/top-headlines", params: params.toMap());
    final breakingNews = BreakingNewsResponseModel.fromJson(response);
    return breakingNews;
  }

  @override
  Future<BreakingNewsResponseModel> getCategorizedNewsArticles(
      ArticleRequestParams params) async {
    final response = await _apiProvider.get(
        endpoint: "/v2/everything", params: params.toMap());
    final everyArticles = BreakingNewsResponseModel.fromJson(response);
    return everyArticles;
  }
}
