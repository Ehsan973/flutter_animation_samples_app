import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({super.key});

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  margin: EdgeInsets.all(20),
                  width: _selectedIndex == index ? 100 : 50,
                  height: 100,
                  color: _selectedIndex == index
                      ? Colors.amberAccent[100]
                      : Colors.amber,
                  duration: Duration(milliseconds: 300),
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 200),
                    scale: _selectedIndex == index ? 1 : 0,
                    child: Center(
                      child: Text('قرمز'),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
