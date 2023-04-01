import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const String title = "buah";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(""),
        ),
      ),
    );
  }
}
