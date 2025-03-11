import 'package:flutter/material.dart';

class FlatButtonDemo extends StatelessWidget {
  void _showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flat Button Demo')),
      body: Center(
        child: TextButton(
          onPressed: () => _showMessage('Flat Button Clicked!'),
          child: const Text('Flat Button'),
        ),
      ),
    );
  }
}
