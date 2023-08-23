import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DefualtTextStyleTransitionScreen extends StatefulWidget {
  const DefualtTextStyleTransitionScreen({super.key});

  @override
  State<DefualtTextStyleTransitionScreen> createState() =>
      _DefualtTextStyleTransitionScreenState();
}

class _DefualtTextStyleTransitionScreenState
    extends State<DefualtTextStyleTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  TextStyle style1 = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey);
  TextStyle style2 = const TextStyle(
      fontSize: 45, fontWeight: FontWeight.w700, color: Colors.green);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default Text Style Transition"),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
            style: _animation.drive(TextStyleTween(begin: style1, end: style2)),
            child: const Text("Hi Wesso")),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.play_arrow),
        onPressed: () {
          if (_controller.status == AnimationStatus.completed) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
      ),
    );
  }
}
