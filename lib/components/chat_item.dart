import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/detail_chat_screen.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatDetailScreen()),
        );
      },
      child: Column(
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
      ),
    );
  }
}
