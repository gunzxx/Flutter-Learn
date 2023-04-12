import 'package:flutter/material.dart';

// void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Demo',
      home: InputScreen(
        nama: "kosong",
      ),
    );
  }
}

class InputScreen extends StatefulWidget {
  String nama;
  InputScreen({super.key, required this.nama});

  @override
  State<InputScreen> createState() => _InputScreenState(nama: nama);
}

const Text title = Text("Anonymous Method");

class _InputScreenState extends State<InputScreen> {
  String nama;
  final _namaController = TextEditingController();

  _InputScreenState({required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Screen'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Center(
                  child: Text("Data kembalian = $nama"),
                ),
              ),
              Flexible(
                flex: 1,
                child: TextField(
                  controller: _namaController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: ElevatedButton(
                  child: Text('Lanjut'),
                  onPressed: () {
                    nama = _namaController.text.trim();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(nama: nama),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String nama;

  const DetailScreen({required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen', style: TextStyle()),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Data yang dikirim = $nama'),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async => {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InputScreen(nama: nama),
                          ),
                        ),
                      },
                  child: Text("back"))
            ],
          )
        ],
      ),
    );
  }
}
