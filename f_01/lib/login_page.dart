import 'package:f_01/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PBM"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Container(
                // color: Colors.red,
                alignment: Alignment.center,
                child: const Text("Tugas 2",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ))),
          ),
          Flexible(
            flex: 1,
            child: Container(
                // color: Colors.red,
                alignment: Alignment.center,
                child: const Text("Welcome to Kelompok 3",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ))),
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: ElevatedButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Login"),
                    Icon(Icons.login),
                  ],
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
