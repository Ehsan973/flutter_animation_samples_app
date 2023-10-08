import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchAnimation extends StatefulWidget {
  const SwitchAnimation({super.key});

  @override
  State<SwitchAnimation> createState() => _SwitchAnimationState();
}

class _SwitchAnimationState extends State<SwitchAnimation> {
  bool isSwitchTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSwitchTrue = !isSwitchTrue;
                  });
                },
                child: AnimatedSwitcher(
                  duration: Duration(seconds: 1),
                  child: isSwitchTrue
                      ? Container(
                          key: Key('1'),
                          width: 100,
                          height: 100,
                          color: Colors.amber,
                        )
                      : Container(
                          key: Key('2'),
                          width: 150,
                          height: 150,
                          color: Colors.blue,
                        ),
                ),
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: isSwitchTrue
                  ? Image.asset(
                      key: Key('1'),
                      'images/khiyar.png',
                    )
                  : Image.asset(
                      key: Key('2'),
                      'images/gozhe.png',
                    ),
            )
          ],
        ),
      ),
    );
  }
}
