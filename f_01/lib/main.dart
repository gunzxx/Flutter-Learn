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
          child: Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(5),
            color: Colors.green,
            child: const Image(
              // width: 100,
              // None : ukuran gambar asli, tidak disesuaikan
              // Contain : menyesuaikan seluruh gambar dengan tinggi dan lebar yang proporsional
              // Cover : ukuran tetap proporsional, tapi tanpa ada sisa ruang kosong
              // Fill : ukuran tidak proporsional, tapi tanpa ada sisa ruang kosong
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
              alignment: Alignment.centerLeft,
              // image: NetworkImage("https://variety.com/wp-content/uploads/2022/03/MCDTRAG_EC024.jpg")),
              image: AssetImage("img/doge.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
