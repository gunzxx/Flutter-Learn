import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  _MyAppState() {
    for (var i = 1; i <= 15; i++) {
      widgets.add(
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.blue,
          child: Row(
            children: [
              Text(
                "Data ke $i",
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF018269),
          child: const Icon(Icons.message),
        ),
        appBar: AppBar(
          toolbarHeight: kToolbarHeight + .3,
          backgroundColor: const Color(0xFF018269),
          title: const Text("Whatsapp"),
          actions: [
            IconButton(
              icon: const Icon(Icons.camera_enhance_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          elevation: 0.0,
        ),
        body: Container(
          color: const Color(0xFFFFFFFF),
          child: ListView(
            children: [
              Container(
                height: 40,
                margin: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  color: Color(0xFF018269),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: const Icon(
                        Icons.group,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white,
                              width: 2.5,
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Chat",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Status",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, .5),
                            ),
                          ),
                          SizedBox(width: 3),
                          CircleAvatar(
                            backgroundColor: Color.fromRGBO(255, 255, 255, .5),
                            radius: 3,
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Panggilan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 255, 255, .5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 80,
                      height: 60,
                      child: Center(
                        child: Icon(
                          Icons.archive_outlined,
                          color: Color(0xFF018269),
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Diarsipkan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Grup 1",
                textChat: "P",
                sender: "Anda",
                checked: true,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Grup 2",
                textChat: "Halo",
                sender: "Anda",
                checked: true,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Grup 3",
                textChat: "Halo",
                sender: "Bayu",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Anjayy",
                textChat: "Halo",
                sender: "Bayu",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Group 4",
                textChat: "Halo",
                sender: "Farhan",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Wakil rakyat",
                textChat: "Waktunya farming",
                sender: "********",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Presiden",
                textChat: "Jangan lupa sholat",
                sender: "Jokowi",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Grup 5",
                textChat: "asdsasadsasa",
                sender: "ASD",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Grup 6",
                textChat: "asdsasadsasa",
                sender: "ASD",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Grup 7",
                textChat: "asdsasadsasa",
                sender: "ASD",
                checked: false,
              ),
              const ChatWa(
                img: "meme.jpg",
                titleChat: "Grup 8",
                textChat: "asdsasadsasa",
                sender: "ASD",
                checked: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatWa extends StatelessWidget {
  final String img, titleChat, textChat, sender;
  final bool checked;
  const ChatWa({
    super.key,
    required this.img,
    required this.titleChat,
    required this.textChat,
    required this.sender,
    this.checked = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            height: 60,
            child: Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage("img/$img"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleChat,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  checkChecked(checked),
                  Text(
                    "$sender: $textChat",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Row checkChecked(bool checked) {
  if (checked == true) {
    return Row(
      children: const [
        Icon(Icons.done_all, size: 20, color: Colors.grey),
        SizedBox(width: 3),
      ],
    );
  }
  return Row(
    children: const [],
  );
}
