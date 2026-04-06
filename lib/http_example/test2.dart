import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HttpApp(),
    );
  }
}

class HttpApp extends StatefulWidget {
  const HttpApp({super.key});

  @override
  State<HttpApp> createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(     // 긴 텍스트를 스크롤 가능하게 (이부분은 무시하셔도 됩니다) -> 주석
            child: Text(result),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        var url = 'https://jsonplaceholder.typicode.com/posts/1';   // JSON API로 변경
        var response = await http.get(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'User-Agent': 'Mozilla/5.0'
          }
        );
        if (response.statusCode == 200) {
          setState(() {
            result = response.body;   // 성공적으로 데이터를 가져오면 결과를 업데이트
          });
        } else {
          setState(() {
            result = 'Failed to load data ${response.statusCode}'; // 오류 발생 시 메시지 업데이트
          });
        }
      },
        child: Icon(Icons.file_download),
      ),
    );
  }
}

