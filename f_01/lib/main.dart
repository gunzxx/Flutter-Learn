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
            const Text("Hello 1"),
            const Text("Hello 2"),
            const Text("Hello 3"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueAccent,
                  child: const Text("Hello 4"),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: const Text("Hello 5"),
                ),
                Container(
                  color: Colors.redAccent,
                  child: const Text("Hello 6"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
