import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Raised Button Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showMessage('Raised Button Clicked!'),
          child: Text('Raised Button'),
        ),
      ),
    );
  }
}
