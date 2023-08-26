import 'package:flutter/material.dart';

class PageMixScaleRotateTransition extends PageRouteBuilder {
  final dynamic page;

  PageMixScaleRotateTransition(this.page)
      : super(
            pageBuilder: (context, Animation, secondAnimation) => page,
            transitionsBuilder: (context, Animation, secondAnimation, child) {
              var _animation = Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(
                      parent: Animation, curve: Curves.bounceInOut));
              // var _animation2 = Tween<double>(begin: 0, end: 2).animate(
              //     CurvedAnimation(
              //         parent: Animation, curve: Curves.decelerate));
              return ScaleTransition(
                scale: _animation,
                child: RotationTransition(
                  turns: _animation,
                  child: child,
                ),
              );
            });
}
