import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('202335053 노정운')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/icon1.jpg'),
              Image.asset('images/icon2.jpg'),
              Image.asset('images/sub1/icon3.jpg'),
              Image.asset('images/induk.png', width: 200, height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
