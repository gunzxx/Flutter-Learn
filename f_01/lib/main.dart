// import 'dart:math';

// import 'package:f_01/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Color(0xFF1b1e23),
          title: Text("Card widget"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.adb, "Serangga android"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String teksBox) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(iconData),
          ),
          Text(teksBox),
        ],
      ),
    );
  }
}
