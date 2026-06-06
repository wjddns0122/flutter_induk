import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '하단 탭 ListView 예제',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ListViewExampleBottomTab(),
    );
  }
}

class ListViewExampleBottomTab extends StatefulWidget {
  const ListViewExampleBottomTab({super.key});

  @override
  State<ListViewExampleBottomTab> createState() =>
      _ListViewExampleBottomTabState();
}

class _ListViewExampleBottomTabState extends State<ListViewExampleBottomTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  /// 탭 controller 선언

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

    /// 탭 4개
  }

  @override
  void dispose() {
    _tabController.dispose();

    /// 메모리 누수 방지
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('하단 탭 ListView 예제')),
      body: TabBarView(
        controller: _tabController,
        children: [
          /// 기본 리스트 뷰
          ListView(
            children: const [
              ListTile(title: Text('항목 1')),
              ListTile(title: Text('항목 2')),
              ListTile(title: Text('항목 3')),
            ],
          ),

          /// ListView.builder
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.star),
              title: Text('아이템 $index'),
            ),
          ),

          /// ListView.seperated
          ListView.separated(
            itemBuilder: (context, index) => ListTile(title: Text('이름 $index')),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 8,
          ),

          /// 가로 ListView
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(width: 100, color: Colors.red),
              Container(width: 100, color: Colors.green),
              Container(width: 100, color: Colors.blue),
              Container(width: 100, color: Colors.orange),
            ],
          ),
        ],
      ),

      /// 아래 쪽 Tabbar
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.list), text: '기본'),
            Tab(icon: Icon(Icons.build), text: 'Builder'),
            Tab(icon: Icon(Icons.line_style), text: '구분선'),
            Tab(icon: Icon(Icons.swap_horiz), text: '가로'),
          ],
        ),
      ),
    );
  }
}
