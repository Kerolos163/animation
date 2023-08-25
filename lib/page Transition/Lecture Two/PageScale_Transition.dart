import 'package:flutter/material.dart';

class PageScaleTransition extends PageRouteBuilder {
  final dynamic page;

  PageScaleTransition(this.page)
      : super(
            pageBuilder: (context, Animation, secondAnimation) => page,
            transitionsBuilder: (context, Animation, secondAnimation, child) {
              return ScaleTransition(
                scale: Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(parent: Animation, curve: Curves.bounceInOut),
                ),
                child: child,
              );
            });
}
