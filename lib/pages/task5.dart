import 'package:flutter/material.dart';

class Task5AnimatedContainerPage extends StatefulWidget {
  const Task5AnimatedContainerPage({super.key});

  @override
  State<Task5AnimatedContainerPage> createState() => _Task5AnimatedContainerPageState();
}

class _Task5AnimatedContainerPageState extends State<Task5AnimatedContainerPage> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  double _borderRadius = 10;

  void _changeShape() {
    setState(() {
     
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.pink : Colors.blue;
      _borderRadius = _borderRadius == 10 ? 50 : 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 5: AnimatedContainer'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _changeShape,
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
            duration: const Duration(seconds: 1), 
            curve: Curves.easeInOut, 
          ),
        ),
      ),
    );
  }
}
