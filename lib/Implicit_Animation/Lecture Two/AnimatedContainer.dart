import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constant.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  Color _color = Colors.grey;
  double _radius = 20;
  double _width = 200;
  double _height = 200;
  void _setAnimationValue() {
    setState(() {
      _color = Colors.green;
      _radius = 40;
      _width = 500;
      _height = 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          _setAnimationValue();
        },
        child: AnimatedContainer(
          curve: Curves.bounceIn,
          width: _width,
          height: _height,
          duration: const Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_radius),
          ),
          child: Image.asset(dog),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restart_alt),
        onPressed: () {
          setState(() {
            _color = Colors.grey;
            _radius = 20;
            _width = 100;
            _height = 100;
          });
        },
      ),
    );
  }
}
