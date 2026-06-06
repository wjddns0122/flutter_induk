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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                        child: Container(color: Colors.amber),
                      ),
                    ),
                    Expanded(flex: 1, child: Container(color: Colors.yellow)),
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                height: 300,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Image.asset('images/icon.jpg')),
                    Expanded(child: Image.asset('images/icon1.jpg')),
                    Expanded(child: Image.asset('images/icon2.jpg')),
                    Spacer(),
                    Expanded(child: Image.asset('images/icon4.jpg')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
