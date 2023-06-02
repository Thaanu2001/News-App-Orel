import 'package:get_it/get_it.dart';

import '../../app/data/data_provider/fetch_news_data_provider.dart';
import '../../app/data/data_provider/fetch_news_data_provider_impl.dart';
import '../../app/data/repository/fetch_news_repository.dart';
import '../../app/data/repository/fetch_news_repository_impl.dart';

final locator = GetIt.instance;

void setupLocator() {
  registerLazySingleton<FetchNewsDataProvider>(FetchNewsDataProviderImpl());

  registerLazySingleton<FetchNewsRepository>(
    FetchNewsRepositoryImpl(dataProvider: locator()),
  );
}

void registerLazySingleton<T extends Object>(T object) {
  return locator.registerLazySingleton<T>(() => object);
}
