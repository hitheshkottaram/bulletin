import 'package:flutter/material.dart';

class AnimatedAppBarFloatingButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isLeft;
  final bool isScrollingUp;

  const AnimatedAppBarFloatingButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.isLeft,
    required this.isScrollingUp,
  });

  @override
  AnimatedAppBarFloatingButtonState createState() =>
      AnimatedAppBarFloatingButtonState();
}

class AnimatedAppBarFloatingButtonState
    extends State<AnimatedAppBarFloatingButton> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      top: 60,
      left: widget.isLeft
          ? widget.isScrollingUp
              ? 16
              : -100
          : null,
      right: widget.isLeft
          ? null
          : widget.isScrollingUp
              ? 16
              : -100,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.colorScheme.surface,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 4.0,
              spreadRadius: 1.0,
              color: Theme.of(context)
                  .colorScheme
                  .onSurface
                  .withValues(alpha: 0.4),
            )
          ],
        ),
        child: Icon(widget.icon),
      ),
    );
  }
}
