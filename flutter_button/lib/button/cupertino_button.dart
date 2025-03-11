import 'package:flutter/cupertino.dart';

class CupertinoButtonScreen extends StatelessWidget {
  void _showMessage(String message, BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder:
          (context) => CupertinoAlertDialog(
            title: Text('Button Clicked'),
            content: Text(message),
            actions: [
              CupertinoDialogAction(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Cupertino Button Demo'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () => _showMessage('Cupertino Button Clicked!', context),
          color: CupertinoColors.activeBlue,
          child: const Text('Cupertino Button'),
        ),
      ),
    );
  }
}
