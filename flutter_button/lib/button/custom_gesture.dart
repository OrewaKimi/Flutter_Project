import 'package:flutter/material.dart';

class CustomGestureScreen extends StatelessWidget {
  void _showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Gesture Demo')),
      body: Center(
        child: GestureDetector(
          onTap: () => _showMessage('Tap detected!'),
          onDoubleTap: () => _showMessage('Double tap detected!'),
          onLongPress: () => _showMessage('Long press detected!'),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Tap, Double Tap, or Long Press',
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
