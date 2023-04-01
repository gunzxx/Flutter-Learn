import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

const Text title = Text("List dan ListView");

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: title,
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text("Data $counter",
                            style: const TextStyle(fontSize: 32)));
                        counter++;
                      });
                    },
                    child: const Text("tambah data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (widgets.isNotEmpty) {
                          widgets.removeLast();
                          counter--;
                        }
                      });
                    },
                    child: const Text("hapus data")),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
          ],
        ),
      ),
    );
  }
}
