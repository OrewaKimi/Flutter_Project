import 'package:flutter/material.dart';

class IconButtonDemo extends StatefulWidget {
  @override
  _IconButtonDemoState createState() => _IconButtonDemoState();
}

class _IconButtonDemoState extends State<IconButtonDemo> {
  int _clickCount = 0;

  void showMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Button Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                setState(() {
                  _clickCount++;
                });
                showMessage(
                  'Icon Button Clicked! Klik ke-' + _clickCount.toString(),
                );
              },
            ),
            Text('Jumlah Klik: $_clickCount'),
          ],
        ),
      ),
    );
  }
}
