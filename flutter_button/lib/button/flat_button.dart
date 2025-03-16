import 'package:flutter/material.dart';

class FlatButtonDemo extends StatefulWidget {
  @override
  _FlatButtonDemoState createState() => _FlatButtonDemoState();
}

class _FlatButtonDemoState extends State<FlatButtonDemo> {
  String _selectedColor = 'Merah';

  void _showMessage(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flat Button Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => _showMessage('Flat Button Clicked!'),
              child: const Text('Flat Button'),
              style: TextButton.styleFrom(
                backgroundColor:
                    _selectedColor == 'Merah'
                        ? Colors.red
                        : _selectedColor == 'Hijau'
                        ? Colors.green
                        : Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            DropdownButton(
              value: _selectedColor,
              items: [
                DropdownMenuItem(child: Text('Merah'), value: 'Merah'),
                DropdownMenuItem(child: Text('Hijau'), value: 'Hijau'),
                DropdownMenuItem(child: Text('Biru'), value: 'Biru'),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedColor = value as String;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
