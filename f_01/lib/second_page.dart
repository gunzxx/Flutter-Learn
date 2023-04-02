import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Multi Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Container(
                // color: Colors.red,
                alignment: Alignment.center,
                child: const Text("Second Page",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ))),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: ElevatedButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Back"),
                    SizedBox(width: 3),
                    Icon(Icons.skip_previous),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
