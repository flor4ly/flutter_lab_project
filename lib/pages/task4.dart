import 'package:flutter/material.dart';
import '../widgets/custom_title.dart';
import '../widgets/custom_counter.dart';

class Task4HomePage extends StatelessWidget {
  const Task4HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 4: Combining Custom Widgets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomTitle(text: 'My Counter App', color: Colors.blue),
            SizedBox(height: 20),
            CustomCounter(),
            SizedBox(height: 40),
            CustomTitle(text: 'Keep Clicking!', color: Color.fromARGB(255, 251, 48, 201)),
          ],
        ),
      ),
    );
  }
}
