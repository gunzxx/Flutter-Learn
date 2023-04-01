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
        body: Container(
          color: Colors.amber,
          margin: const EdgeInsets.all(10),
          // padding: EdgeInsets.only(left: 20, right: 15,bottom:25),
          padding: const EdgeInsets.fromLTRB(15, 20, 25, 30),
          child: Container(
            // color: Colors.red,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                // begin: Alignment.topLeft,
                // end: Alignment.bottomRight,
                begin: Alignment(-1, 1),
                end: Alignment(1, -1),
                colors: <Color>[
                  Colors.blue,
                  Colors.green,
                ],
              ),
              // color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
