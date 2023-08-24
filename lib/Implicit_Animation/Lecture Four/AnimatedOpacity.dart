import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  bool _isvisiable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Opacity")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animatedOpacityText(text: "Tom And Jerry"),
            animatedOpacityImage(img: jerry, time: 1500),
            animatedOpacityImage(img: tom, time: 2500)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_isvisiable?Icons.visibility:Icons.visibility_off),
        onPressed: () {
          setState(() {
            _isvisiable = !_isvisiable;
          });
        },
      ),
    );
  }

  Padding animatedOpacityImage({required String img, int time = 500}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedOpacity(
        curve: Curves.bounceInOut,
        opacity: _isvisiable ? 1 : 0,
        duration: Duration(milliseconds: time),
        child: Image.asset(img, height: 200),
      ),
    );
  }

  Padding animatedOpacityText({required String text, int time = 500}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedOpacity(
        curve: Curves.bounceInOut,
        opacity: _isvisiable ? 1 : 0,
        duration: Duration(milliseconds: time),
        child: Text(
          text,
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
