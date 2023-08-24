import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedTextSize extends StatefulWidget {
  const AnimatedTextSize({super.key});

  @override
  State<AnimatedTextSize> createState() => _AnimatedTextSizeState();
}

class _AnimatedTextSizeState extends State<AnimatedTextSize> {
  Color color = Colors.black;
  double fontsize = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Text"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedDefaultTextStyle(
              curve: Curves.bounceInOut,
              style: TextStyle(color: color, fontSize: fontsize),
              duration: const Duration(milliseconds: 500),
              textAlign: TextAlign.center,
              child: const Text("Wesso"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: resetAnimation, icon: const Icon(Icons.remove)),
                IconButton(onPressed: doAnimation, icon: const Icon(Icons.add))
              ],
            )
          ]),
    );
  }

  void doAnimation() {
    setState(() {
      color = Colors.green;
      fontsize = 100;
    });
  }

  void resetAnimation() {
    setState(() {
      color = Colors.black;
      fontsize = 24;
    });
  }
}
