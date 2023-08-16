import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool isFirstWidgetVisiable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Cross Fade onal"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isFirstWidgetVisiable = !isFirstWidgetVisiable;
            });
          },
          child: AnimatedCrossFade(
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.bounceOut,
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.blueGrey,
              child: Image.asset(dog),
            ),
            secondChild: Container(
              width: 200,
              height: 200,
              color: Colors.green,
              child: Image.asset(tom),
            ),
            crossFadeState: isFirstWidgetVisiable
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 2000),
          ),
        ),
      ),
    );
  }
}
