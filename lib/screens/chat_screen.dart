import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chat_item.dart';

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
