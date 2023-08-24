import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  final List<String> _img = [cheese, jerry, tom, dog];
  double _padding = 5;
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Padding"),
      ),
      body: Center(
          child: GridView.count(
        crossAxisCount: 2,
        children: _img.map((e) {
          return AnimatedPadding(
              curve: Curves.bounceInOut,
              padding: EdgeInsets.all(_padding),
              duration: const Duration(milliseconds: 400),
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: Image.asset(e)));
        }).toList(),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(isExpanded?Icons.expand_less:Icons.expand),
        onPressed: () {
          setState(() {
            if (isExpanded) {
              _padding = 40;
            } else {
              _padding = 5;
            }
            isExpanded = !isExpanded;
          });
        },
      ),
    );
  }
}
