import 'package:flutter/material.dart';

class PositionAnimation extends StatefulWidget {
  const PositionAnimation({super.key});

  @override
  State<PositionAnimation> createState() => _PositionAnimationState();
}

class _PositionAnimationState extends State<PositionAnimation> {
  double top = 30;
  double left = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              curve: Curves.ease,
              duration: Duration(seconds: 1),
              top: top,
              left: left,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    top += 50;
                    left += 10;
                  });
                },
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
