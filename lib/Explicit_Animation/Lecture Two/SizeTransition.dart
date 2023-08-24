import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SizeTransitionScreen extends StatefulWidget {
  const SizeTransitionScreen({super.key});

  @override
  State<SizeTransitionScreen> createState() => _SizeTransitionScreenState();
}

class _SizeTransitionScreenState extends State<SizeTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Size Transition")),
      body: Center(
          child: GestureDetector(
        onTap: _startAnimation,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Center(
            child: SizeTransition(
              sizeFactor: _animation,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
                child: Image.asset(dog),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
