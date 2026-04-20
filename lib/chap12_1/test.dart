import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User {
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<User> users = [
    User('트럼프1', '0100001', 'abc@induk.ac.kr'), User('트럼프2', '0100002', 'abc@induk.ac.kr'),
    User('트럼프3', '0100003', 'abc@induk.ac.kr'), User('트럼프4', '0100004', 'abc@induk.ac.kr'),
    User('트럼프5', '0100005', 'abc@induk.ac.kr'), User('트럼프6', '0100006', 'abc@induk.ac.kr'),
    User('트럼프7', '0100007', 'abc@induk.ac.kr'), User('트럼프8', '0100008', 'abc@induk.ac.kr'),
    User('트럼프9', '0100009', 'abc@induk.ac.kr'), User('트럼프10', '01000010', 'abc@induk.ac.kr'),
    User('트럼프11', '01000011', 'abc@induk.ac.kr'), User('트럼프12', '01000012', 'abc@induk.ac.kr'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('202335053 노정운'),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('images/trump.webp'),
            ),
            title: Text(users[index].name),
            subtitle: Text(users[index].phone),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              print(users[index].name);
              print(users[index].phone);
            },
          );
        }, separatorBuilder: (context, index) {
          return const Divider(height: 2, color: Colors.black,);
        },
            itemCount: users.length),
      ),
    );
  }
}
