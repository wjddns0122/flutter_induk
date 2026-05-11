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
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
                child: Container(color: Colors.red, width: 300.0)),
            Expanded(
              flex: 1,
              child: Container(color: Colors.green, width: 50.0),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.yellow, width: 50.0),
            ),
          ],
        ),
      ),
    );
  }
}
