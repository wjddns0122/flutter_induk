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
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Container(color: Colors.red, width: 150, height: 150.0),
        ),
      ),
    );
  }
}
