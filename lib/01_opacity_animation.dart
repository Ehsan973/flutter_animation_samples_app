import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({super.key});

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  double opacity = 1;
  String buttonText = 'Click to fade out';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: opacity,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (opacity == 1) {
                    setState(() {
                      opacity = 0;
                      buttonText = 'Click to fade in';
                    });
                  } else if (opacity == 0) {
                    setState(() {
                      opacity = 1;
                      buttonText = 'Click to fade out';
                    });
                  }
                },
                child: Text(buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
