import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

const Text title = Text("Anonymous Method");

class _MyAppState extends State<MyApp> {
  String message = 'Tombol belum ditekan';

  void tekanTombol() {
    setState(() {
      message = "Tombol sudah ditekan";
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
            children: [
              Text(message),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = "Tombol sudah ditekan";
                  });
                },
                child: Text("Push here"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
