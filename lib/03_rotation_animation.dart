import 'package:flutter/material.dart';

class RotationAnimation extends StatefulWidget {
  const RotationAnimation({super.key});

  @override
  State<RotationAnimation> createState() => _RotationAnimationState();
}

class _RotationAnimationState extends State<RotationAnimation> {
  double turns = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          duration: Duration(seconds: 2),
          turns: turns,
          child: GestureDetector(
            onTap: () {
              setState(() {
                turns++;
              });
            },
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                'images/khiyar.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
