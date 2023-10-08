import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({super.key});

  @override
  State<ScaleAnimation> createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedScale(
              duration: Duration(seconds: 1),
              scale: scale,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('images/khiyar.png'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  scale++;
                });
              },
              child: Text('Scale Up'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  scale--;
                });
              },
              child: Text('Scale Down'),
            ),
          ],
        ),
      ),
    );
  }
}
