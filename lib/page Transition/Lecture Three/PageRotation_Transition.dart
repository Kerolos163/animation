import 'package:flutter/material.dart';

class PageRotation extends PageRouteBuilder {
  final dynamic page;
  PageRotation(this.page)
      : super(
            pageBuilder: (context, Animation, secondAnimation) => page,
            transitionsBuilder: (context, Animation, secondAnimation, child) {
              return RotationTransition(
                turns: Tween<double>(begin: 0, end: 2).animate(
                  CurvedAnimation(parent: Animation, curve: Curves.linear),
                ),
                child: child,
              );
            });
}
