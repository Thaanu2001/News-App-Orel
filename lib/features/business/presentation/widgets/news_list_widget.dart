import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/cubit/fetch_news_cubit.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../news_card/presentation/news_card.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewsCubit, FetchNewsState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () {
            return const SizedBox();
          },
          loading: () {
            return Container(
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppConstants.primaryColor,
                ),
              ),
            );
          },
          errorOccured: (errorMessage) {
            return Container(
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: Text(
                errorMessage ?? 'Unknown error occured',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppConstants.greyColor,
                ),
              ),
            );
          },
          loaded: (newsList) {
            return ListView.builder(
              padding: const EdgeInsets.only(bottom: 10),
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return NewsCard(news: newsList[index]);
              },
            );
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}
