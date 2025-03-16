import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Raised Button Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showMessage(context, 'Raised Button Clicked!'),
          child: Text('Raised Button'),
        ),
      ),
    );
  }
}
