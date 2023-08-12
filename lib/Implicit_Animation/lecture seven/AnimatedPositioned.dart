import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant.dart';
import 'Widget/CustomAnimatedPositioned.dart';

class AnimatedPositionedContainer extends StatefulWidget {
  const AnimatedPositionedContainer({super.key});

  @override
  State<AnimatedPositionedContainer> createState() =>
      _AnimatedPositionedContainerState();
}

class _AnimatedPositionedContainerState
    extends State<AnimatedPositionedContainer> {
  bool _oncheese = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Position"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(children: [
          ObjectPosition(
            context,
            object: cheese,
            top: 0,
            left: 0,
          ),
          ObjectPosition(
            context,
            object: jerry,
            top: 0,
            left: _oncheese ? 0 : MediaQuery.of(context).size.width / 1.5,
          ),
          ObjectPosition(
            context,
            object: dog,
            top: _oncheese ? 0 : MediaQuery.of(context).size.height / 3,
            left: _oncheese ? 0 : MediaQuery.of(context).size.width / 2,
          ),
          ObjectPosition(
            context,
            object: tom,
            top: _oncheese ? 0 : MediaQuery.of(context).size.height / 1.5,
            left: 0,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_oncheese ? Icons.back_hand_rounded : Icons.location_on),
        onPressed: () {
          setState(() {
            _oncheese = !_oncheese;
          });
        },
      ),
    );
  }
}
