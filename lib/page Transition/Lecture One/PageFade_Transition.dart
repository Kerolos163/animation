import 'package:flutter/material.dart';

class PageFadeTransition extends PageRouteBuilder {
  final dynamic Page;
  PageFadeTransition(this.Page)
      : super(
          pageBuilder: (Context, Animation, SecondAnimation) => Page,
          transitionsBuilder: (Context, Animation, SecondAnimation, child) {
            return FadeTransition(opacity: Animation, child: child);
          },
        );
}
