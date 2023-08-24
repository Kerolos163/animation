import 'package:animation/Implicit_Animation/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Animatedphysicalmodel extends StatefulWidget {
  const Animatedphysicalmodel({super.key});

  @override
  State<Animatedphysicalmodel> createState() => _AnimatedphysicalmodelState();
}

class _AnimatedphysicalmodelState extends State<Animatedphysicalmodel> {
  bool _ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Physical Model"),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              setState(() {
                _ispressed = !_ispressed;
              });
            },
            child: AnimatedPhysicalModel(
                shape: BoxShape.rectangle,
                elevation: _ispressed ? 60 : 0,
                color: Colors.green,
                shadowColor: Colors.lightGreen,
                duration: const Duration(milliseconds: 400),
                child: Container(
                  width: 200,
                  height: 200,
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(jerry),
                ))),
      ),
    );
  }
}
