import 'package:flutter/material.dart';
import '../widgets/custom_counter.dart';
import '../widgets/custom_title.dart';

class Task3CustomCounterPage extends StatelessWidget {
  const Task3CustomCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 3: Custom Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomTitle(text: 'Interactive Counter', color: Colors.blue),
            SizedBox(height: 20),
            CustomCounter(),
          ],
        ),
      ),
    );
  }
}
