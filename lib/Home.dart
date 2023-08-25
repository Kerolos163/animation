import 'package:animation/Explicit_Animation/Lecture%20Nine/IndexScaleTransition.dart';
import 'package:animation/page%20Transition/Lecture%20Four/PageSlide_Transition.dart';
import 'package:animation/page%20Transition/Lecture%20Three/PageRotation_Transition.dart';
import 'package:animation/page%20Transition/Lecture%20Two/PageScale_Transition.dart';
import 'package:animation/page%20Transition/PageTwo.dart';
import 'package:animation/page%20Transition/Lecture%20One/PageFade_Transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Explicit_Animation/Lecture Five/FadeTransition.dart';
import 'Explicit_Animation/Lecture Seven/TweenAnimationBuilder.dart';
import 'Explicit_Animation/Lecture Six/PositionedDirectionalTransition.dart';
import 'Explicit_Animation/Lecture Three/RotationTransition.dart';
import 'Explicit_Animation/Lecture Two/SizeTransition.dart';
import 'Explicit_Animation/Lecture eight/TextStyle_Transition.dart';
import 'Explicit_Animation/Lecture one/AnimatedPoistionedTransition.dart';
import 'Explicit_Animation/lecture Four/AnimatedBuilder.dart';
import 'Implicit_Animation/Lecture Five/AnimatedPadding.dart';
import 'Implicit_Animation/Lecture Four/AnimatedOpacity.dart';
import 'Implicit_Animation/Lecture Six/AnimatedPhysicalModel.dart';
import 'Implicit_Animation/Lecture Three/AnimatedText.dart';
import 'Implicit_Animation/Lecture Two/AnimatedContainer.dart';
import 'Implicit_Animation/Lecture eight/Animated_Positioned_Directional.dart';
import 'Implicit_Animation/Lecture eleven/AnimatedList.dart';
import 'Implicit_Animation/Lecture nine/AnimatedCrossFade.dart';
import 'Implicit_Animation/Lecture one/Lecture_one.dart';
import 'Implicit_Animation/Lecture ten/AnimatedSwitcherWidget.dart';
import 'Implicit_Animation/lecture seven/AnimatedPositioned.dart';

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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedOpacityScreen(),
                ));
              },
              child: const Text("Animated Opacity"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedPaddingScreen(),
                ));
              },
              child: const Text("Animated Padding"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Animatedphysicalmodel(),
                ));
              },
              child: const Text("Animated Physical Model"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedPositionedContainer(),
                ));
              },
              child: const Text("Animated Position"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const AnimatedPositionedDirectionalScreen(),
                ));
              },
              child: const Text("Animated Positioned Directional"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedCrossFadeScreen(),
                ));
              },
              child: const Text("Animated Cross Fade"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedSwitcherScreen(),
                ));
              },
              child: const Text("Animated Switcher"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedListScreen(),
                ));
              },
              child: const Text("Animated List"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedPoistionedTransition(),
                ));
              },
              child: const Text("Animated Poistioned Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SizeTransitionScreen(),
                ));
              },
              child: const Text("Animated Size Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const RotationTransitionScreen(),
                ));
              },
              child: const Text("Animated Rotation Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AnimatedBuilderScreen(),
                ));
              },
              child: const Text("Animated Builder"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FadeTransitionScreen(),
                ));
              },
              child: const Text("Fade Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const PositionedDirectionalTransitionScreen(),
                ));
              },
              child: const Text("Positioned Directional Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TweenAnimationBuilderScreen(),
                ));
              },
              child: const Text("Tween Animation Builder"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const DefualtTextStyleTransitionScreen(),
                ));
              },
              child: const Text("Default Text Style Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const IndexScaleTransitionScreen(),
                ));
              },
              child: const Text("Index Scale Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.of(context).push(PageFadeTransition(const PageTwo()));
              },
              child: const Text("Page Fade Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(PageScaleTransition(const PageTwo()));
              },
              child: const Text("Page Scale Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.of(context).push(PageRotation(const PageTwo()));
              },
              child: const Text("Page Rotation Transition"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.of(context).push(PageSlide(const PageTwo()));
              },
              child: const Text("Page Slide Transition"),
            ),
          ],
        ),
      ),
    );
  }
}
