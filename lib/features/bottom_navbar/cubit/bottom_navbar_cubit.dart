import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navbar_state.dart';

class BottomNavbarCubit extends Cubit<BottomNavbarState> {
  BottomNavbarCubit() : super(const BottomNavbarState());

  int getIndex(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.science:
        return 0;
      case NavbarItem.business:
        return 1;
      case NavbarItem.technology:
        return 2;
    }
  }

  NavbarItem getNavbarItem(int index) {
    switch (index) {
      case 1:
        return NavbarItem.business;
      case 2:
        return NavbarItem.technology;
      default:
        return NavbarItem.science;
    }
  }

  Future<void> changeItem(int index) async {
    try {
      if (!isClosed) {
        emit(state.copyWith(item: getNavbarItem(index), index: index));
      }
    } catch (_) {
      if (!isClosed) {
        emit(state.copyWith(item: getNavbarItem(index), index: index));
      }
    }
  }
}
