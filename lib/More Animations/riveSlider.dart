import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class RiveSliderScreen extends StatefulWidget {
  const RiveSliderScreen({super.key});

  @override
  State<RiveSliderScreen> createState() => _RiveSliderScreenState();
}

class _RiveSliderScreenState extends State<RiveSliderScreen> {
  final List<String> _animation = [
    "assets/rive/bear.riv",
    "assets/rive/girl.riv",
    "assets/rive/rating.riv"
  ];
  final PageController _Controller = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    StartAnimation();
    super.initState();
  }

  void StartAnimation() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (_currentPage == _animation.length - 1) {
        _Controller.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear);
      } else {
        _Controller.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear);
      }
      StartAnimation();
    });
  }

  @override
  void dispose() {
    _Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rive Slider"),
      ),
      body: PageView.builder(
        controller: _Controller,
        onPageChanged: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        itemCount: _animation.length,
        itemBuilder: (context, index) {
          return Center(
            child: RiveAnimation.asset(_animation[index]),
          );
        },
        reverse: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.animation), label: "Animation 1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_repair), label: "Animation 2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.surfing), label: "Animation 3"),
        ],
        onTap: (value) {
          setState(() {
            _Controller.animateToPage(value,
                duration: const Duration(seconds: 1), curve: Curves.linear);
          });
        },
      ),
    );
  }
}
