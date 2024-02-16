import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsappClone());
}

var data = [
  {
    'name': 'John Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'Jane Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'John Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'Jane Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'John Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'Jane Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'John Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'Jane Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
  {
    'name': 'John Doe',
    'message': 'Hello, How are you?',
    'time': '10:00 AM',
    'image': 'https://i.pravatar.cc/300',
  },
];

class WhatsappClone extends StatefulWidget {
  const WhatsappClone({super.key});

  @override
  State<WhatsappClone> createState() => _WhatsappCloneState();
}

class _WhatsappCloneState extends State<WhatsappClone> {
  @override
  Widget build(BuildContext context) {
    var initialIndex = 1;

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'PTSans'),
      home: DefaultTabController(
        initialIndex: initialIndex,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF075E54),
            title: const Text('WhatsApp'),
            titleTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            actions: const [
              Icon(Icons.search),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.more_vert),
              ),
            ],
            bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS'),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF04AD9C),
            child: const Icon(Icons.message),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.camera_alt),
              ChatPage(),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // create object data contain list of chat

    return Container(
      color: const Color(0xFF101D25),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // create list view to display chat
              for (var item in data)
                ChatItem(
                  image: item['image']!,
                  name: item['name']!,
                  time: item['time']!,
                  message: item['message']!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  const ChatItem({
    key,
    required this.image,
    required this.name,
    required this.time,
    required this.message,
  }) : super(key: key);

  final String image;
  final String name;
  final String time;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(image),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(
                        color: Color(0xFFD4DCDF),
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: const TextStyle(
                        color: Color(0xFFD4DCDF),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              time,
              style: const TextStyle(
                color: Color(0xFFD4DCDF),
                fontSize: 15,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
