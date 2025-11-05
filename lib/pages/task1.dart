import 'package:flutter/material.dart';

class Task1WidgetsPage extends StatelessWidget {
  const Task1WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 1: Understanding Widgets'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Row Example
            Text('Row (Horizontal)', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            
            // Row with 2 colored boxes
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ],
            ), // ← Don't forget comma!
            
            SizedBox(height: 30),
            
            // Section 2: Column Example
            Text('Column (Vertical)', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            
            // Column with 2 colored boxes
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow, 
                ),
                SizedBox(height: 10), // ← Changed from 30 to 10 for spacing between boxes
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pinkAccent,
                ),
              ],
            ), // ← Don't forget comma!
            
            SizedBox(height: 30),
            
            // Section 3: Wrap Example
            Text('Wrap (Wraps automatically)', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            
          
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
                Container(
                  width: 80, 
                  height: 80,
                  color: Colors.orange,
                ),
                Container(
                  width: 80, 
                  height: 80, 
                  color: Colors.purple,
                ),
                Container(
                  width: 80,
                  height: 80, 
                  color: Colors.cyan,
                ),
              ],
            ), 
          ],
        ),
      ),
    );
  }
}