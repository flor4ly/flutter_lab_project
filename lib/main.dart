
import 'package:flutter/material.dart';
import 'pages/task1.dart';  
import 'pages/task2.dart';
import 'pages/task3.dart';
import 'pages/task4.dart';
import 'pages/task5.dart';
import 'pages/task6.dart';
import 'pages/task7.dart';
import 'pages/task8.dart';
import 'pages/task9.dart';
import 'pages/task10.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab',
      theme: ThemeData(primarySwatch: Colors.blue),
home: Task10MiniProjectPage(),







    );
  }
}


