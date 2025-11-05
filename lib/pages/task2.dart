import 'package:flutter/material.dart';
import '../widgets/custom_title.dart';

class Task2CustomTitlePage extends StatelessWidget {
  const Task2CustomTitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 2: Custom Stateless Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomTitle(text: 'Text1', color: Colors.blue),
            SizedBox(height: 20),
            CustomTitle(text: 'Text2', color: Colors.green),
            SizedBox(height: 20),
            CustomTitle(text: 'Text3', color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
