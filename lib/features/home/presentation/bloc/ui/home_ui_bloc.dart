import 'package:bullet_in/features/home/presentation/bloc/ui/home_ui_event.dart';
import 'package:bullet_in/features/home/presentation/bloc/ui/home_ui_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUIBloc extends Bloc<HomeUIEvent, HomeUIState> {
  HomeUIBloc()
      : super(const HomeUIInitialState(isScrollUp: true, isTopVisible: true)) {
    on<ScrollUpEvent>(onScrollUpEvent);
    on<TopAppBarEvent>(onTopAppBarEvent);
    on<HomeUIInitialEvent>(onHomeUIInitialEvent);
  }
  void onScrollUpEvent(ScrollUpEvent event, Emitter<HomeUIState> emitter) {
    emitter(ScrollUpState(isScrollUp: event.isScrollUp));
  }
  void onTopAppBarEvent(TopAppBarEvent event, Emitter<HomeUIState> emitter) {
    emitter(TopAppBarState(isTopVisible: event.isTopVisible));
  }
    void onHomeUIInitialEvent(HomeUIInitialEvent event, Emitter<HomeUIState> emitter) {
    emitter(ScrollUpState(isScrollUp: event.isScrollUp));
    emitter(TopAppBarState(isTopVisible: event.isTopVisible));
  }
}
