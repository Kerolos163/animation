import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Implicit_Animation/Lecture Three/AnimatedText.dart';
import 'Implicit_Animation/Lecture Two/AnimatedContainer.dart';
import 'Implicit_Animation/Lecture one/Lecture_one.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animation")),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimationAlign(),
                ));
              },
              child: const Text("Animation Align"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedContainerScreen(),
                ));
              },
              child: const Text("Animated Container"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedTextSize(),
                ));
              },
              child: const Text("Animated Text Size"),
            ),
          ],
        ),
      ),
    );
  }
}
