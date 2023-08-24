import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Implicit_Animation/constant.dart';

class AnimatedPoistionedTransition extends StatefulWidget {
  const AnimatedPoistionedTransition({super.key});

  @override
  State<AnimatedPoistionedTransition> createState() =>
      _AnimatedPoistionedTransitionState();
}

class _AnimatedPoistionedTransitionState
    extends State<AnimatedPoistionedTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jerryanimation;
  late Animation<RelativeRect> _tomanimation;
  late Animation<RelativeRect> _doganimation;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _jerryanimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(300, 300, 0, 0),
    ).animate(_controller);
    _tomanimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(_controller);
    _doganimation = RelativeRectTween(
      begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
      end: const RelativeRect.fromLTRB(50, 50, 0, 0),
    ).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.reset();
    _controller.forward();
  }

  void _reverseAnimation() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Poistioned Transition"),
      ),
      body: Stack(children: [
        PositionedTransitionItem(
          animation: _doganimation,
          color: Colors.blueGrey,
          img: dog,
        ),
        PositionedTransitionItem(
          animation: _tomanimation,
          color: Colors.grey,
          img: tom,
        ),
        PositionedTransitionItem(
          animation: _jerryanimation,
          color: Colors.green,
          img: jerry,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              onPressed: _startAnimation,
              child: const Icon(Icons.start),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              onPressed: _reverseAnimation,
              child: const Icon(Icons.close),
            ),
          ]),
        )
      ]),
    );
  }

  PositionedTransition PositionedTransitionItem(
      {required Animation<RelativeRect> animation,
      required Color color,
      required String img}) {
    return PositionedTransition(
        rect: animation,
        child: Container(
          height: 100,
          width: 100,
          color: color,
          child: Image.asset(img),
        ));
  }
}
