import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedPositionedDirectionalScreen extends StatefulWidget {
  const AnimatedPositionedDirectionalScreen({super.key});

  @override
  State<AnimatedPositionedDirectionalScreen> createState() =>
      _AnimatedPositionedDirectionalScreenState();
}

class _AnimatedPositionedDirectionalScreenState
    extends State<AnimatedPositionedDirectionalScreen> {
  double _start = 0;
  double _top = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Positioned Directional"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(children: [
          AnimatedPositionedDirectional(
            start: _start,
            top: _top,
            duration: const Duration(milliseconds: 400),
            child: SizedBox(
              width: 120,
              height: 120,
              child: Image.asset(jerry),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: moveLeft,
                    child: const Icon(Icons.arrow_circle_left_outlined),
                  ),
                  ElevatedButton(
                    onPressed: moveRight,
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
                  ElevatedButton(
                    onPressed: moveUp,
                    child: const Icon(Icons.arrow_circle_up_outlined),
                  ),
                  ElevatedButton(
                    onPressed: moveDown,
                    child: const Icon(Icons.arrow_circle_down_outlined),
                  ),
                ]),
          )
        ]),
      ),
    );
  }

  void moveLeft() {
    setState(() {
      _start -= 50;
      if (_start < 0) {
        _start = 0;
      }
    });
  }

  void moveRight() {
    setState(() {
      _start += 50;
      if (_start > MediaQuery.of(context).size.width - 130) {
        _start = MediaQuery.of(context).size.width - 130;
      }
    });
  }

  void moveUp() {
    setState(() {
      _top -= 50;
      if (_top < 0) {
        _top = 0;
      }
    });
  }

  void moveDown() {
    setState(() {
      _top += 50;
      if (_top > MediaQuery.of(context).size.height - 300) {
        _top = MediaQuery.of(context).size.height - 300;
      }
    });
  }
}
