import 'package:belajar_navigasi/home_with_drawer.dart';
import 'package:belajar_navigasi/tab_navigation.dart';
import 'package:flutter/material.dart';
import 'package:belajar_navigasi/page_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TabNavigation(),
    );
  }
}