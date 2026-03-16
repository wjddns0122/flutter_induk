import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.yellow,
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 300,),
                Text('인덕대학교', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.red),),
                Text('정보통신공학과', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text('202335053', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.cyan),),
                Text('노정운', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.purple),)
              ],
            ),
          )
        ),
      )
  );
}
