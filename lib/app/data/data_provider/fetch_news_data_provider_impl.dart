import 'package:dio/dio.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/model/news_model.dart';
import '../failure/fetch_news_failure.dart';
import 'fetch_news_data_provider.dart';

class FetchNewsDataProviderImpl extends FetchNewsDataProvider {
  final Dio _dio = Dio();

  @override
  Future<List<News>> fetchNewsList({required String category}) async {
    try {
      final response =
          await _dio.get('${AppConstants.newsApi}?category=$category');

      if (response.statusCode == 200) {
        List data = response.data['data'];
        return data.map((e) => News.fromJson(e)).toList();
      } else {
        throw FetchNewsFailure.fromCode(response.statusCode);
      }
    } on FetchNewsFailure catch (e) {
      throw FetchNewsFailure(e.message);
    } on DioError catch (e) {
      if (e.response != null) {
        throw FetchNewsFailure.fromCode(e.response!.statusCode);
      } else {
        throw const FetchNewsFailure();
      }
    } catch (e) {
      throw const FetchNewsFailure();
    }
  }
}
