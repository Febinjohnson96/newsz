import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:newsz/src/data/data_sources/local/hive_provider.dart';
import 'package:newsz/src/data/data_sources/remote/api_provider.dart';
import 'package:newsz/src/domain/repositories/articles_repository.dart';
import 'package:newsz/src/domain/usecases/get_articles_usecase.dart';

import 'src/data/repositories/articles_repository_impl.dart';

final injector = GetIt.instance;

Future<void> init() async {
  //usecase
  injector.registerLazySingleton(() => GetArticlesUseCase(injector()));

  // Repository
  injector.registerLazySingleton<ArticlesRepository>(
      () => ArticlesRepositoryImpl(injector()));

  //core
  injector.registerLazySingleton<ApiProvider>(() => ApiProvider());

  //hive
  injector.registerSingleton<HiveProvider>(HiveProvider());
  debugPrint("Dependency Injection");
}
