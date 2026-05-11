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
        body: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.green
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}
