import 'package:news_app_orel/core/model/news_model.dart';

abstract class FetchNewsDataProvider {
  Future<List<News>> fetchNewsList({required String category});
}
