import 'package:flutter/cupertino.dart';

class CupertinoButtonScreen extends StatefulWidget {
  @override
  _CupertinoButtonScreenState createState() => _CupertinoButtonScreenState();
}

class _CupertinoButtonScreenState extends State<CupertinoButtonScreen> {
  int _sliderValue = 100;
  bool _switchValue = false;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              onPressed:
                  () => _showMessage('Cupertino Button Clicked!', context),
              color: CupertinoColors.activeBlue,
              child: const Text('Cupertino Button'),
            ),
            SizedBox(height: 20),
            CupertinoSlider(
              value: _sliderValue.toDouble(),
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value.toInt();
                });
              },
            ),
            Text('Slider Value: $_sliderValue', style: TextStyle(fontSize: 12)),
            SizedBox(height: 20),
            CupertinoSwitch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
            Text(
              _switchValue ? 'Switch On' : 'Switch Off',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
