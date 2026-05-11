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
        body: Center(
          child: Row(
            children: <Widget>[
              Image.asset('images/icon.jpg'),
              Image.asset('images/icon1.jpg'),
              Image.asset('images/icon2.jpg'),
              Spacer(),
              Image.asset('images/icon4.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
