import 'package:newsz/src/core/params/article_request.dart';
import 'package:newsz/src/data/models/breaking_news_response_model.dart';

abstract class ArticlesRepository {
  Future<BreakingNewsResponseModel> getBreakingNewsArticles(
      ArticleRequestParams params);
  Future<BreakingNewsResponseModel> getCategorizedNewsArticles(
      ArticleRequestParams params);
}
