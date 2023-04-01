import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // darkTheme: true,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ini navbar"),
        ),
        body: Center(
            child: Container(
          color: Colors.lightBlue,
          width: 150,
          // height: 50,
          child: const Text(
            "Hello world, saya sedang belajar flutter di android untuk mata kuliah pemrograman berbasis mobile",
            // maxLines: 2,
            overflow: TextOverflow.clip,
            // softWrap: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        )),
      ),
    );
  }
}
