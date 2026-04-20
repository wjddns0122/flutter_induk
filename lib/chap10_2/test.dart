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
        body: Container(
          color: Colors.yellow,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50, height: 100, color: Colors.red,
              ),
              Container(
                width: 50, height: 50, color: Colors.green,
              ),
              Container(
                width: 50, height: 150, color: Colors.blue,
              ),
              Container(
                width: 50, height: 50, color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
