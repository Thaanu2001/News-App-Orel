part of 'bottom_navbar_cubit.dart';

enum NavbarItem { science, business, technology }

class BottomNavbarState extends Equatable {
  const BottomNavbarState({
    this.item = NavbarItem.science,
    this.index = 0,
  });

  final NavbarItem item;
  final int index;

  @override
  List<Object> get props => [item, index];

  BottomNavbarState copyWith({
    NavbarItem? item,
    int? index,
  }) {
    return BottomNavbarState(
      item: item ?? this.item,
      index: index ?? this.index,
    );
  }
}
