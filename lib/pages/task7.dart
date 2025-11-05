import 'package:flutter/material.dart';

class Task7GestureDetectorPage extends StatefulWidget {
  const Task7GestureDetectorPage({super.key});

  @override
  State<Task7GestureDetectorPage> createState() => _Task7GestureDetectorPageState();
}

class _Task7GestureDetectorPageState extends State<Task7GestureDetectorPage> {
  Color _color = Colors.grey;

  void _onTap() {
    setState(() {
      _color = Colors.blue;
    });
  }

  void _onDoubleTap() {
    setState(() {
      _color = const Color.fromARGB(255, 234, 255, 78);
    });
  }

  void _onLongPress() {
    setState(() {
      _color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 7: GestureDetector Practice')),
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          onDoubleTap: _onDoubleTap,
          onLongPress: _onLongPress,
          child: Container(
            width: 200,
            height: 200,
            color: _color,
            child: const Center(
              child: Text(
                'Tap Me!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
