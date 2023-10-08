import 'package:animations_app/01_opacity_animation.dart';
import 'package:animations_app/02_position_animation.dart';
import 'package:animations_app/03_rotation_animation.dart';
import 'package:animations_app/04_scale_animation.dart';
import 'package:animations_app/05_container_animation.dart';
import 'package:animations_app/06_text_animation.dart';
import 'package:animations_app/07_switch_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchAnimation(),
    );
  }
}
