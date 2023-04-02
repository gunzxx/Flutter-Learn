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
  // Random random = Random();
  Color c1 = Colors.red;
  Color c2 = Colors.green;
  Color c3 = Colors.blue;

  Color _targetColor = Colors.purple;

  bool _isaccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF018269),
          title: const Text("Latihan Dragable"),
          elevation: 0.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: c1,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: c1.withOpacity(.5),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    height: 0,
                    width: 0,
                    child: Material(
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: c1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: c2,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: c1.withOpacity(.5),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    child: Material(
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: c2,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: c3,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: c1.withOpacity(.5),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    child: Material(
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: c3,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                _isaccepted = true;
                _targetColor = value;
              },
              builder: (context, candidat, rejected) {
                return (_isaccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: _targetColor,
                          shape: const StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: _targetColor,
                          shape: const StadiumBorder(),
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
