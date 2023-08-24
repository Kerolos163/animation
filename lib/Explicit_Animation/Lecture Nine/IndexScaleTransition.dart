import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';

class IndexScaleTransitionScreen extends StatefulWidget {
  const IndexScaleTransitionScreen({super.key});

  @override
  State<IndexScaleTransitionScreen> createState() =>
      _IndexScaleTransitionScreenState();
}

class _IndexScaleTransitionScreenState extends State<IndexScaleTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _Opacityanimation;
  late Animation<double> _Scaleanimation;
  late int _currentIndex = 0;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _Opacityanimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _Scaleanimation = Tween<double>(begin: .5, end: 1).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _goToNextScreen() {
    _currentIndex++;
    if (_currentIndex == 3) {
      _currentIndex = 0;
    }
    setState(() {
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Index Scale Transition"),
      ),
      body: IndexedStack(index: _currentIndex, children: [
        ScaleTransition(
          scale: _Scaleanimation,
          child: FadeTransition(
            opacity: _Opacityanimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Image.asset(jerry),
            ),
          ),
        ),
        ScaleTransition(
          scale: _Scaleanimation,
          child: Container(
            alignment: Alignment.center,
            color: Colors.blueGrey,
            child: Image.asset(tom),
          ),
        ),
        ScaleTransition(
          scale: _Scaleanimation,
          child: Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Image.asset(dog),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _goToNextScreen,
        child: const Icon(Icons.arrow_downward),
      ),
    );
  }
}
