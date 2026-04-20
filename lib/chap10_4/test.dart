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
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 50, color: Colors.green,),
                  Container(width: 50, height: 50, color: Colors.blue,),
                ],
              ),
              SizedBox(height: 10,), // Row 사이 간격
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 50, color: Colors.green,),
                  Container(width: 50, height: 50, color: Colors.blue,),
                ],
              ),
              SizedBox(height: 20,),  // Row 사이 간격
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 50, color: Colors.green,),
                  Container(width: 50, height: 50, color: Colors.blue,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
