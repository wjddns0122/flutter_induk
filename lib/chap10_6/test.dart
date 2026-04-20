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
          title: Text('202335053 노정운'),
        ),
        body:
        IndexedStack(
          index: 1,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
