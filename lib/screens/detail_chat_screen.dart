import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_message_modal.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    List<ChatMessage> messages = [
      ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
      ChatMessage(
          messageContent: "How have you been?", messageType: "receiver"),
      ChatMessage(
          messageContent: "Hey Kriss, I am doing fine dude. wbu?",
          messageType: "sender"),
      ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
      ChatMessage(
          messageContent: "Is there any thing wrong?", messageType: "sender"),
    ];

    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: SizedBox(
                            height: 4, child: Icon(Icons.emoji_emotions)),
                      ),
                      suffixIcon: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween, // added line
                        mainAxisSize: MainAxisSize.min, // added line
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.attach_file),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.photo_camera),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF04AD9C),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF075E54),
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
              child: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white),
              const SizedBox(
                width: 2,
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/1.jpg"),
                maxRadius: 20,
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Kriss Benwat",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.videocam),
                  color: Colors.white),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  color: Colors.white),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                  color: Colors.white),
            ],
          )),
        ),
        body: SingleChildScrollView(
          child: Stack(children: <Widget>[
            ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (messages[index].messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (messages[index].messageType == "receiver"
                              ? Colors.grey.shade200
                              : const Color(0xFF04AD9C)),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Text(messages[index].messageContent,
                            style: TextStyle(
                                fontSize: 15,
                                color:
                                    (messages[index].messageType == 'receiver'
                                        ? Colors.black
                                        : Colors.white))),
                      ),
                    ),
                  );
                }),
          ]),
        ));
  }
}
