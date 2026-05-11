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
        appBar: AppBar(
          title: const Text('202335053 노정운'),
        ),
        body: Container(
          color: Colors.tealAccent,
          child: Align(
            alignment: FractionalOffset(0.5, 0.5),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}
