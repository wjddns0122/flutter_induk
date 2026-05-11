import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('202335053 노정운')),
        body: Stack(
          children: [
            Container(color: Colors.green),
            Container(color: Colors.blue, height: 300, width: 300),
            Positioned(
              right: 40,
              top: 40,
              child: Container(color: Colors.pink, height: 150, width: 150),
            ),
          ],
        ),
      ),
    );
  }
}
