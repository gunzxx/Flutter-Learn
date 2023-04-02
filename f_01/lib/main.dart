// import 'dart:math';

// import 'package:f_01/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text Field")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: controller,
                onChanged: (value) {
                  setState(() {});
                },
                // obscureText: true,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, .7),
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      )
                    ]),
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                child: Text(controller.text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
