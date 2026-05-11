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
          color: Colors.yellow,
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 50.0,
                ),
                Container(
                  color: Colors.green,
                  width: 150,
                  height: 150.0,
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
