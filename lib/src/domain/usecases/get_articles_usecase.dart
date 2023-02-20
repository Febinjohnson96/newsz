import 'package:newsz/src/core/params/article_request.dart';
import 'package:newsz/src/core/usecases/usecase.dart';
import 'package:newsz/src/data/models/breaking_news_response_model.dart';
import 'package:newsz/src/domain/repositories/articles_repository.dart';

class GetArticlesUseCase
    implements UseCase<BreakingNewsResponseModel, ArticleRequestParams> {
  final ArticlesRepository _articlesRepository;

  GetArticlesUseCase(this._articlesRepository);

  @override
  Future<BreakingNewsResponseModel> call({ArticleRequestParams? params}) {
    return _articlesRepository.getBreakingNewsArticles(params!);
  }
}
