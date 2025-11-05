import 'package:flutter/material.dart';
import '../widgets/custom_title.dart';
import '../widgets/custom_counter.dart';

class Task10MiniProjectPage extends StatefulWidget {
  const Task10MiniProjectPage({super.key});

  @override
  State<Task10MiniProjectPage> createState() => _Task10MiniProjectPageState();
}

class _Task10MiniProjectPageState extends State<Task10MiniProjectPage> {
  bool _isDark = false;
  Color _boxColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _boxColor = _boxColor == Colors.blue ? Colors.pink : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Task 10: Themed Interactive UI'),
          actions: [
            Switch(
              value: _isDark,
              onChanged: (value) {
                setState(() {
                  _isDark = value;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTitle(text: 'My Mini Project', color: Colors.teal),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: _changeColor,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: _boxColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const CustomCounter(),
            ],
          ),
        ),
      ),
    );
  }
}
