import 'package:flutter/material.dart';

AnimatedAlign character_Movement(
    {required AlignmentGeometry characterposition, required String character}) {
  return AnimatedAlign(
    alignment: characterposition,
    duration: const Duration(milliseconds: 500),
    child: Container(
      height: 100,
      width: 100,
      color: Colors.transparent,
      child: Image.asset(character),
    ),
  );
}
