import 'dart:math';

import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({super.key});

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Center(
          child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 2 * pi,
            child: Padding(
              padding: const EdgeInsets.all(64.0),
              child: Image.asset(dog),
            ),
          );
        },
      )),
    );
  }
}
