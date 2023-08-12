  import 'package:flutter/material.dart';

AnimatedPositioned ObjectPosition(BuildContext context,
      {required String object, required double top, required double left}) {
    return AnimatedPositioned(
      top: top,
      left: left,
      duration: const Duration(milliseconds: 600),
      child: SizedBox(
        width: 120,
        height: 120,
        child: Image.asset(object),
      ),
    );
  }