import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimatedAppBarFloatingButton extends StatefulWidget {
  final ScrollController scrollController;
  final IconData icon;
  final VoidCallback onPressed;
  final bool isLeft;

  const AnimatedAppBarFloatingButton({
    super.key,
    required this.scrollController,
    required this.icon,
    required this.onPressed,
    required this.isLeft,
  });

  @override
  AnimatedAppBarFloatingButtonState createState() =>
      AnimatedAppBarFloatingButtonState();
}

class AnimatedAppBarFloatingButtonState
    extends State<AnimatedAppBarFloatingButton> {
  bool _isScrollingUp = true;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      if (!_isScrollingUp) {
        setState(() {
          _isScrollingUp = true;
        });
      }
    } else if (widget.scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_isScrollingUp) {
        setState(() {
          _isScrollingUp = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      top: 60,
      left: widget.isLeft
          ? _isScrollingUp
              ? 16
              : -100
          : null,
      right: widget.isLeft
          ? null
          : _isScrollingUp
              ? 16
              : -100,
      child: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: widget.onPressed,
        elevation: 10.0,
        child: Icon(widget.icon),
      ),
    );
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);
    super.dispose();
  }
}
