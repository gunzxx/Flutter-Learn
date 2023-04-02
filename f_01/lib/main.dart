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
          title: const Text("Latihan stack dan align"),
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(color: Colors.blue)),
                      Flexible(flex: 1, child: Container(color: Colors.white)),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(color: Colors.white)),
                      Flexible(flex: 1, child: Container(color: Colors.blue)),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: const [
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                    Text("Ini adalah teks layer 2",
                        style: TextStyle(fontSize: 30)),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment(.9, .9),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Icon(Icons.message),
              ),
            )
          ],
        ),
      ),
    );
  }
}
