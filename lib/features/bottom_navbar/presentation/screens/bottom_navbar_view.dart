import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../cubit/bottom_navbar_cubit.dart';
import '../widgets/bottom_navigation_bar.dart';

class BottomNavbarView extends StatelessWidget {
  const BottomNavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
        buildWhen: (previous, current) => previous.index != current.index,
        builder: (context, state) {
          return AppConstants.bottomNavbarItems[state.index];
        },
      ),
    );
  }
}
