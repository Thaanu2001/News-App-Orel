import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../cubit/bottom_navbar_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, navigatorState) {
        return BottomNavigationBar(
          selectedFontSize: 11,
          unselectedFontSize: 10,
          showUnselectedLabels: true,
          elevation: 24,
          unselectedItemColor: AppConstants.greyColor,
          selectedItemColor: AppConstants.primaryColor,
          currentIndex: navigatorState.index,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(height: 2),
          onTap: (index) => context.read<BottomNavbarCubit>().changeItem(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Science',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: 'Technology',
            ),
          ],
        );
      },
    );
  }
}
