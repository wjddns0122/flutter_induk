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
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 180,
              ),
              Container(
                color: Colors.green,
                width: 180,
              ),
              Container(
                color: Colors.blue,
                width: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
