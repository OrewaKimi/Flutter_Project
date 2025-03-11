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
        appBar: AppBar(title: const Text('Kimi Maulana')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Welcome to My App',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                  shadows: [
                    Shadow(
                      color: Colors.green[500]!,
                      offset: const Offset(2, 2),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.blue[800],
                  ), // Perbaikan warna
                  const SizedBox(width: 20),
                  Icon(
                    Icons.favorite,
                    size: 50,
                    color: Colors.blue[800],
                  ), // Perbaikan warna
                  const SizedBox(width: 20),
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Colors.blue[800],
                  ), // Perbaikan warna
                  const SizedBox(width: 20),
                  Icon(
                    Icons.phone,
                    size: 50,
                    color: Colors.blue[800],
                  ), // Perbaikan warna
                  const SizedBox(width: 20),
                  Icon(
                    Icons.settings,
                    size: 50,
                    color: Colors.blue[800],
                  ), // Perbaikan warna
                ],
              ),
              const SizedBox(height: 20),
              Image.asset('images/solo_leveling.jpg', width: 200, height: 200),
              const SizedBox(height: 20),
              Image.network(
                'https://picsum.photos/200/300',
                width: 200,
                height: 200,
                errorBuilder: (context, error, stackTrace) {
                  return const Text('Failed to load image');
                },
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
