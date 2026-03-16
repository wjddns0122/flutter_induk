import 'dart:math';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    final randomColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('202335053 노정운'),
        ),
        body: Center(
          child: Text(
            wordPair.asPascalCase,
            style: TextStyle(
              fontSize: 36,
              color: randomColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
