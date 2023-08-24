import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class PositionedDirectionalTransitionScreen extends StatefulWidget {
  const PositionedDirectionalTransitionScreen({super.key});

  @override
  State<PositionedDirectionalTransitionScreen> createState() =>
      _PositionedDirectionalTransitionScreenState();
}

class _PositionedDirectionalTransitionScreenState
    extends State<PositionedDirectionalTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;
  bool move = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(100, 100, 0, 0))
        .animate(_controller);
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

  _reverseAnimation() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Positioned Directional Transition"),
      ),
      body: Stack(children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return PositionedDirectional(
              bottom: _animation.value.bottom,
              end: _animation.value.right,
              start: _animation.value.left,
              top: _animation.value.top,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blueGrey,
                child: Image.asset(dog),
              ),
            );
          },
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          move ? _reverseAnimation() : _StartAnimation();
          move = !move;
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
