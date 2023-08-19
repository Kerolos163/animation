import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class RotationTransitionScreen extends StatefulWidget {
  const RotationTransitionScreen({super.key});

  @override
  State<RotationTransitionScreen> createState() =>
      _RotationTransitionScreenState();
}

class _RotationTransitionScreenState extends State<RotationTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    _animation = Tween<double>(begin: 0, end: 7).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _StartAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rotation Transition"),
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Center(
              child: Container(
            width: 200,
            height: 200,
            color: Colors.blueGrey,
            child: Image.asset(dog),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _StartAnimation,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
