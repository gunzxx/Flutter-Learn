import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // List<Widget> widgets = [];

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF018269),
          title: const Text("Latihan image"),
          elevation: 0.0,
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              Container(width: 80, height: 80, color: Colors.red),
              const Spacer(),
              Container(width: 80, height: 80, color: Colors.green),
              const Spacer(flex: 2),
              Container(width: 80, height: 80, color: Colors.blue),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
