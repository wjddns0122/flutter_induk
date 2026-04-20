import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HttpApp());
  }
}

class HttpApp extends StatefulWidget {
  const HttpApp({super.key});

  @override
  State<HttpApp> createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  List<dynamic>? data; // API에서 가져온 데이터를 저장할 리스트
  TextEditingController _editingController = TextEditingController();
  ScrollController _scrollController = ScrollController();
  int page = 1;

  @override
  void initState() {
    super.initState();
    data = [];
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        page++;
        getJSONData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _editingController,
          style: const TextStyle(color: Colors.blue),
          decoration: InputDecoration(hintText: '검색어를 입력하세요.'),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: data!.isEmpty
              ? const Text(
                  "데이터가 없습니다.",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                )
              : ListView.builder(itemCount: data!.length, itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Image.network(
                        data![index]['thumbnail'],
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(data![index]['title'].toString(),
                            textAlign: TextAlign.center,),
                          Text('저자: ${data![index]['authors'].toString()}'),
                          Text('가격: ${data![index]['sale_price'].toString()}'),
                          Text('판매중: ${data![index]['status'].toString()}'),
                        ],
                      ))
                    ],
                  ),
                );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        page = 1;
        data!.clear();
        getJSONData();
      },
      child: const Icon(Icons.file_download),),
    );
  }


  Future<void> getJSONData() async {
    var url = 'https://dapi.kakao.com/v3/search/book?target=title&page=$page&query=${Uri.encodeQueryComponent(_editingController.text)}';
    try {
      print('요청 시작: $url');
      var response = await http.get(Uri.parse(url),
      headers: {"Authorization": "KakaoAK ${본인의 REST API 키값을 넣어주시면 됩니다.}"});

      if (response.statusCode == 200) {
        setState(() {
          var dataConvertedToJSON = json.decode(response.body);
          List<dynamic> result = dataConvertedToJSON['documents'];
          data!.addAll(result);
        });
      } else {
        throw Exception('Failed to load data ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
