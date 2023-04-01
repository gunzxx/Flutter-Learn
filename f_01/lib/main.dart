import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const String title = "Text Style";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // titleTextStyle: TextStyle(
          //     // fontFamily: "Poppins",
          //     // fontSize: 24,
          //     // fontWeight: FontWeight.w500,
          //     ),
          title: Text(title),
        ),
        body: Center(
          child: Text(
            "Ini adalah text",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 32,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.combine([
                TextDecoration.overline,
                TextDecoration.underline,
              ]),
              decorationColor: Colors.grey,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}
