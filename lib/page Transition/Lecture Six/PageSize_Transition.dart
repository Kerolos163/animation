import 'package:flutter/material.dart';

class PagesizeTransition extends PageRouteBuilder {
  final dynamic Page;
  PagesizeTransition(this.Page)
      : super(
          pageBuilder: (Context, Animation, SecondAnimation) => Page,
          transitionsBuilder: (Context, Animation, SecondAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: Animation,
                child: child,
              ),
            );
          },
        );
}
