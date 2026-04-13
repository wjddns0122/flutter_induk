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
          title: Text('202335053 노정운'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: Image.asset("images/icon/user.png"),
                onTap: () {
                  print("이미지 클릭!");
                },
                onVerticalDragStart: (DragStartDetails details) {
                  print('vertical drag start..... global Position : '
                      '${details.globalPosition.dx}, ${details.globalPosition.dy}');
                  print('vertical drag start..... local Position : '
                      '${details.localPosition.dx}, ${details.localPosition.dy}');
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                print('ElevatedButton 클릭..');
              }, style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.red)
              ),
                child: Text('클릭 미'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
