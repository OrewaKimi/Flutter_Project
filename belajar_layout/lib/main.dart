import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout Screen')),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Responsive Box',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
