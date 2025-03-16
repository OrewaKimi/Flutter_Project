import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  @override
  _FloatingActionButtonDemoState createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  int _counter = 0;

  void _showMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Action Button Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $_counter'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Increment'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _decrementCounter,
              child: const Text('Decrement'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showMessage('Floating Action Button Clicked!'),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
