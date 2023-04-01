import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

const Text title = Text("Statefull");

class _MyAppState extends State<MyApp> {
  int number = 1;
  double ukuranFont = 20.0;
  void tambahAngka() {
    setState(() {
      number++;
      ukuranFont = ukuranFont + number.toDouble();
    });
  }

  void resetAngka() {
    setState(() {
      number = 1;
      ukuranFont = 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     colorScheme: ColorScheme.fromSwatch(
      //   primarySwatch: Colors.black,
      // )),
      home: Scaffold(
        appBar: AppBar(
          title: title,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("Ukuran font = $ukuranFont"),
              Text(
                number.toString(),
                style: TextStyle(fontSize: ukuranFont),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black54,
                  padding: EdgeInsets.all(20),
                ),
                onPressed: tambahAngka,
                child: Text("Tambah"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.all(20),
                ),
                onPressed: resetAngka,
                child: Text("Reset"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
