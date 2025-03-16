import 'package:flutter/material.dart';

class CustomGestureScreen extends StatefulWidget {
  @override
  _CustomGestureScreenState createState() => _CustomGestureScreenState();
}

class _CustomGestureScreenState extends State<CustomGestureScreen> {
  int _dragCount = 0;
  int _pinchCount = 0;

  void _showMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Gesture Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _dragCount++;
                });
                _showMessage('Drag detected! Total drag count: $_dragCount');
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Drag me!',
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onScaleUpdate: (details) {
                setState(() {
                  _pinchCount++;
                });
                _showMessage('Pinch detected! Total pinch count: $_pinchCount');
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Pinch me!',
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
