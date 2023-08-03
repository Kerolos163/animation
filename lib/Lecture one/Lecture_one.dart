import 'package:flutter/material.dart';
import 'Core/constant.dart';
import 'Core/finction.dart';
import 'Widget/character_Movement.dart';

class AnimationAlign extends StatefulWidget {
  const AnimationAlign({super.key});

  @override
  State<AnimationAlign> createState() => _AnimationAlignState();
}

class _AnimationAlignState extends State<AnimationAlign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: Stack(
        children: [
          character_Movement(
              characterposition: getNextAlignment(jerryAliignment),
              character: dog),
          character_Movement(
              characterposition: getNextAlignment(jerryAliignment + 1),
              character: tom),
          character_Movement(
              characterposition: getNextAlignment(jerryAliignment + 2),
              character: jerry),
          character_Movement(
              characterposition: getNextAlignment(jerryAliignment + 3),
              character: cheese),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: () {
          setState(() {
            jerryAliignment++;
          });
        },
      ),
    );
  }
}
