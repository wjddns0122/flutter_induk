import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Dialog 테스트 202335053 노정운')),
        body: const TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  DateTime dateValue = DateTime.now();
  TimeOfDay? timeValue;

  void _dialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog 타이틀'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text('수신동의'),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  /// 바텀 시트(화면 하단에서 올라오는 메뉴)를 보여주는 메서드
  void _bottomSheet() {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.yellow,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('ADD'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.remove),
              title: const Text('REMOVE'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _modalBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.yellow,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text('ADD'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.remove),
                title: const Text('REMOVE'),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  /// 시간 선택기 보여주는 메서드
  Future<void> _timePicker() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (selectedTime != null) {
      setState(() {
        timeValue = selectedTime;
      });
    }
  }

  /// 날짜 선택기 보여주는 메서드
  Future<void> _datePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2016),
      lastDate: DateTime(2030),
      initialDate: dateValue,
    );
    if (picked != null) {
      setState(() {
        dateValue = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _dialog,
            child: const Text('dialog'),
          ), // 다이얼로그 열기 위한 버튼
          ElevatedButton(
            onPressed: _bottomSheet,
            child: const Text('bottomSheet'),
          ), // 바텀 시트 열기 위한 버튼
          ElevatedButton(
            onPressed: _modalBottomSheet,
            child: const Text('modalBottomSheet'),
          ), // 모달 바텀 시트 열기 위한 버튼
          ElevatedButton(
            onPressed: _datePicker,
            child: const Text('datePicker'),
          ), // 날짜 선택기 열기 위한 버튼
          ElevatedButton(
            onPressed: _timePicker,
            child: const Text('timePicker'),
          ), // 시간 선택기 열기 위한 버튼
          const SizedBox(height: 20),
          Text('date : ${DateFormat('yyyy-MM-dd').format(dateValue)}'),
          if (timeValue != null)
            Text('time : ${timeValue!.hour}:${timeValue!.minute}'),
        ],
      ),
    );
  }
}
