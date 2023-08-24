import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Switcher"),
      ),
      body: Center(
        child: AnimatedSwitcher(
          switchInCurve: Curves.bounceIn,
          switchOutCurve: Curves.bounceOut,
          duration: const Duration(seconds: 1),
          child: isLoading
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isLoading = !isLoading;
                    });
                  },
                  child: const Text("LogIn NOW"))
              : const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.switch_account),
        onPressed: () {
          setState(() {
            isLoading = !isLoading;
          });
        },
      ),
    );
  }
}
