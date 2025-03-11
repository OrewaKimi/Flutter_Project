import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  void _showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Action Button Demo')),
      body: Center(child: const Text('Press the FAB!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showMessage('Floating Action Button Clicked!'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
