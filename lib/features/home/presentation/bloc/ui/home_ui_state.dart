abstract class HomeUIState {
  const HomeUIState();
}

class HomeUIInitialState extends HomeUIState {
  final bool isScrollUp;
  final bool isTopVisible;

  const HomeUIInitialState({
    required this.isScrollUp,
    required this.isTopVisible,
  });
}

class ScrollUpState extends HomeUIState {
  final bool isScrollUp;
  const ScrollUpState({required this.isScrollUp});
}

class TopAppBarState extends HomeUIState {
  final bool isTopVisible;
  const TopAppBarState({required this.isTopVisible});
}