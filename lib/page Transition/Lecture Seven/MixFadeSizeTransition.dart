import 'package:flutter/material.dart';

class PageMixFadeSizeTransition extends PageRouteBuilder {
  final dynamic Page;
  PageMixFadeSizeTransition(this.Page)
      : super(
          pageBuilder: (Context, Animation, SecondAnimation) => Page,
          transitionsBuilder: (Context, Animation, SecondAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: Animation,
                child: FadeTransition(
                  opacity: Animation,
                  child: child,
                ),
              ),
            );
          },
        );
}
