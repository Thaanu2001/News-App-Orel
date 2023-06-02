// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/model/news_model.dart';
import '../data/repository/fetch_news_repository.dart';

part 'fetch_news_cubit.freezed.dart';
part 'fetch_news_state.dart';

class FetchNewsCubit extends Cubit<FetchNewsState> {
  final FetchNewsRepository _fetchNewsRepository;

  FetchNewsCubit({
    required FetchNewsRepository fetchNewsRepository,
    required String category,
  })  : _fetchNewsRepository = fetchNewsRepository,
        super(const FetchNewsState.initial()) {
    fetchNewsList(category);
  }

  Future<void> fetchNewsList(String category) async {
    emit(const FetchNewsState.loading());
    try {
      final result =
          await _fetchNewsRepository.fetchNewsList(category: category);

      result.fold((errorMessage) {
        if (!isClosed) {
          emit(FetchNewsState.errorOccured(errorMessage));
        }
      }, (newsList) {
        if (!isClosed) {
          emit(FetchNewsState.loaded(newsList));
        }
      });
    } catch (e) {
      if (!isClosed) {
        emit(const FetchNewsState.errorOccured(null));
      }
    }
  }
}
