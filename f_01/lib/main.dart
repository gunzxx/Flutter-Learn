import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan row column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello 1"),
            Text("Hello 2"),
            Text("Hello 3"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Hello 4"),
                  color: Colors.blueAccent,
                ),
                Container(
                  child: Text("Hello 5"),
                  color: Colors.greenAccent,
                ),
                Container(
                  child: Text("Hello 6"),
                  color: Colors.redAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
