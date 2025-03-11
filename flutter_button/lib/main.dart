import 'package:flutter/material.dart';
import 'button/raised_button.dart';
import 'button/flat_button.dart';
import 'button/icon_button.dart';
import 'button/floating_action_button.dart';
import 'button/cupertino_button.dart';
import 'button/custom_gesture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buttons Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Buttons Demo')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildNavigationButton(context, 'Raised Button', RaisedButton()),
          _buildNavigationButton(context, 'Flat Button', FlatButtonDemo()),
          _buildNavigationButton(context, 'Icon Button', IconButtonDemo()),
          _buildNavigationButton(
            context,
            'Floating Action Button',
            FloatingActionButtonDemo(),
          ),
          _buildNavigationButton(
            context,
            'Cupertino Button',
            CupertinoButtonScreen(),
          ),
          _buildNavigationButton(
            context,
            'Custom Gesture',
            CustomGestureScreen(),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationButton(
    BuildContext context,
    String title,
    Widget screen,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Text(title),
      ),
    );
  }
}
