import 'package:dartz/dartz.dart';

import '../../../core/model/news_model.dart';

abstract class FetchNewsRepository {
  Future<Either<String, List<News>>> fetchNewsList({required String category});
}
