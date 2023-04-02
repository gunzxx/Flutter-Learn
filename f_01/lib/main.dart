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
          title: const Text("Latihan animated container"),
          elevation: 0.0,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: const Color.fromRGBO(0, 0, 0, .7),
              duration: const Duration(milliseconds: 300),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
              child: const Center(
                child: Text("OK"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
