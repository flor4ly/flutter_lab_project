import 'package:flutter/material.dart';

class Task9AnimatedListPage extends StatefulWidget {
  const Task9AnimatedListPage({super.key});

  @override
  State<Task9AnimatedListPage> createState() => _Task9AnimatedListPageState();
}

class _Task9AnimatedListPageState extends State<Task9AnimatedListPage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final List<int> _items = [];

  void _addItem() {
    final int index = _items.length;
    _items.add(index);
    _listKey.currentState!.insertItem(index);
  }

  Widget _buildItem(int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        color: Colors.blueAccent,
        child: ListTile(
          title: Text('Item $index', style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 9: AnimatedList Practice')),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) => _buildItem(index, animation),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
