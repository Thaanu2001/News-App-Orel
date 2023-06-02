import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/cubit/fetch_news_cubit.dart';
import '../../../../app/data/repository/fetch_news_repository.dart';
import '../../../../core/service_locator/service_locator.dart';
import 'science_view.dart';

class SciencePage extends StatelessWidget {
  const SciencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchNewsCubit(
        fetchNewsRepository: locator<FetchNewsRepository>(),
        category: 'science',
      ),
      child: const ScienceView(),
    );
  }
}
