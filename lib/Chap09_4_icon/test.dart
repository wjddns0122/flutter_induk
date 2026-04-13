import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

// stl
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test 202335053 노정운'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.alarm,
                size: 100,
                color: Colors.red,
              ),
              IconButton(onPressed: () {
                print('아이콘 클릭');
              }, icon: const Icon(Icons.alarm, size: 100,)),
              const FaIcon(
                FontAwesomeIcons.bell,
                size: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
