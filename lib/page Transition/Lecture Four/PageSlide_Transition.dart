import 'package:flutter/material.dart';

class PageSlide extends PageRouteBuilder {
  final dynamic page;
  PageSlide(this.page)
      : super(
          pageBuilder: (context, Animation, secondAnimation) => page,
          transitionsBuilder: (context, Animation, secondAnimation, child) {
            var tween =
                Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero);
            var OffsetAnimation = Animation.drive(tween);
            return SlideTransition(
              position: OffsetAnimation,
              child: child,
            );
          },
        );
}
