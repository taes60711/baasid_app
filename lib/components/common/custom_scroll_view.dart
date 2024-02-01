import 'package:flutter/material.dart';

class Customscrollview extends StatelessWidget {
  Widget child;
  Axis? scrollDirection;
  Customscrollview({
    super.key,
    required this.child,
    this.scrollDirection,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(overscroll: false),
      child: SingleChildScrollView(
        scrollDirection:
            scrollDirection == null ? Axis.vertical : scrollDirection as Axis,
        child: child,
      ),
    );
  }
}
