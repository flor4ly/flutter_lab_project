import 'package:flutter/material.dart';

class Task8ThemedAppPage extends StatefulWidget {
  const Task8ThemedAppPage({super.key});

  @override
  State<Task8ThemedAppPage> createState() => _Task8ThemedAppPageState();
}

class _Task8ThemedAppPageState extends State<Task8ThemedAppPage> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Task 8: Themed App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Light / Dark Theme', style: TextStyle(fontSize: 20)),
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
        ),
      ),
    );
  }
}
