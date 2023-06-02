part of 'fetch_news_cubit.dart';

@freezed
class FetchNewsState with _$FetchNewsState {
  const factory FetchNewsState.initial() = _Initial;

  const factory FetchNewsState.loading() = _Loading;

  const factory FetchNewsState.loaded(List<News> newsList) = _Loaded;

  const factory FetchNewsState.errorOccured(String? errorMessage) =
      _ErrorOccured;
}
