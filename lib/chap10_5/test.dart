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
            children: [
              Container(  // 첫 번쨰 행 -> 나머지 부분 복사
                margin: const EdgeInsets.only(bottom: 5),
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red,),
                    Container(width: 50, height: 50, color: Colors.green,),
                    Container(width: 50, height: 150, color: Colors.blue,)
                  ],
                ),
              ),
              Container(  // 두 번째 행
                margin: const EdgeInsets.only(bottom: 5),
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red,),
                    Container(width: 50, height: 50, color: Colors.green,),
                    Container(width: 50, height: 150, color: Colors.blue,)
                  ],
                ),
              ),
              Container(  // 세 번째 행
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red,),
                    Container(width: 50, height: 50, color: Colors.green,),
                    Container(width: 50, height: 150, color: Colors.blue,)
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
