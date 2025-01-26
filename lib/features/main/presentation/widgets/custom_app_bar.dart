import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconColor,
  });

  final String title;
  final String subTitle;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: ClipPath(
              clipper: QuarterCircleClipper(),
              child: Container(
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: iconColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 150, left: 20.0, right: 20.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.headlineLarge
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 4),
                Text(
                  subTitle,
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(color: theme.colorScheme.onSecondaryContainer),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuarterCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(30, 0);
    path.arcToPoint(
      Offset(size.width, size.height - 20),
      radius: Radius.circular(size.width - 30),
      clockwise: false,
    );

    path.arcToPoint(
      Offset(size.width, 0),
      radius: Radius.circular(size.width),
      clockwise: false,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
