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
        appBar: AppBar(
          title: Text('202335053 노정운'),     // 본인 학번 및 이름
        ),
        body: Column(
          children: [
            Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),),
            SizedBox(height: 50),
            Container(
              color: Colors.red,
              child: Image.asset('images/induk.png',
                width: 300,
                height: 200,
                fit: BoxFit.fill,
              )
            ),
          ],
        ),
      ),
    );
  }
}
