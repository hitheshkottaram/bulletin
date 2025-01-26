abstract class HomeUIEvent {
  const HomeUIEvent();
}
class HomeUIInitialEvent extends HomeUIEvent {
  final bool isScrollUp;
  final bool isTopVisible;

  const HomeUIInitialEvent({
    required this.isScrollUp,
    required this.isTopVisible,
  });
}

class ScrollUpEvent extends HomeUIEvent {
  final bool isScrollUp;
  const ScrollUpEvent({required this.isScrollUp});
}

class TopAppBarEvent extends HomeUIEvent {
  final bool isTopVisible;
  const TopAppBarEvent({required this.isTopVisible});
}