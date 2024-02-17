import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

void main() {
  runApp(const WhatsappClone());
}

class WhatsappClone extends StatefulWidget {
  const WhatsappClone({super.key});

  @override
  State<WhatsappClone> createState() => _WhatsappCloneState();
}

class _WhatsappCloneState extends State<WhatsappClone>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this, initialIndex: _currentIndex);
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    IconData icon;

    switch (_currentIndex) {
      case 0:
        icon = Icons.camera_alt;
        break;
      case 1:
        icon = Icons.message;
        break;
      case 2:
        icon = Icons.camera_alt;
        break;
      case 3:
        icon = Icons.add_call;
        break;
      default:
        icon = Icons.message;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'PTSans'),
      home: DefaultTabController(
        initialIndex: _currentIndex,
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
            bottom: TabBar(
              controller: _tabController, // Add the TabController here
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: const [
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
            child: Icon(icon),
          ),
          body: TabBarView(
            controller: _tabController, // Add the TabController here
            children: const [
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
