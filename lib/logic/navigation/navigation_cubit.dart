import 'package:cubit/cubit.dart';
import 'package:equatable/equatable.dart';
import 'constants/nav_bar_items.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.changecard, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.changecard:
        emit(NavigationState(NavbarItem.changecard, 0));
        break;
      case NavbarItem.orders:
        emit(NavigationState(NavbarItem.orders, 1));
        break;
      case NavbarItem.promotions:
        emit(NavigationState(NavbarItem.promotions, 2));
        break;
      case NavbarItem.more:
        emit(NavigationState(NavbarItem.more, 3));
        break;
    }
  }
}
