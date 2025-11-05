import 'package:flutter/material.dart';

class Task6ExplicitAnimationPage extends StatefulWidget {
  const Task6ExplicitAnimationPage({super.key});

  @override
  State<Task6ExplicitAnimationPage> createState() => _Task6ExplicitAnimationPageState();
}

class _Task6ExplicitAnimationPageState extends State<Task6ExplicitAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, 
    );

    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 6: Explicit Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Container(
                  margin: EdgeInsets.only(left: _animation.value),
                  child: child,
                );
              },
              child: const FlutterLogo(size: 60),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _startAnimation,
              child: const Text('Run Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
