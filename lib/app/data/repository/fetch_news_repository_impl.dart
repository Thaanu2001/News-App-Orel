import 'package:dartz/dartz.dart';

import '../../../core/model/news_model.dart';
import '../data_provider/fetch_news_data_provider.dart';
import '../failure/fetch_news_failure.dart';
import 'fetch_news_repository.dart';

class FetchNewsRepositoryImpl extends FetchNewsRepository {
  final FetchNewsDataProvider _dataProvider;

  FetchNewsRepositoryImpl({required FetchNewsDataProvider dataProvider})
      : _dataProvider = dataProvider;

  @override
  Future<Either<String, List<News>>> fetchNewsList({
    required String category,
  }) async {
    try {
      final response = await _dataProvider.fetchNewsList(category: category);

      return right(response);
    } on FetchNewsFailure catch (e) {
      return left(e.message);
    } catch (e) {
      return left(e.toString());
    }
  }
}
