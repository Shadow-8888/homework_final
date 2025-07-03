import 'package:flutter/material.dart';
import 'package:modul4_jabborov/ui_14/pages/chat_page.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MessageModel> messages = [
      MessageModel(
        name: 'Sajib Rahman',
        avatarUrl: "images/avatar1.png",
        message: 'Hi, John! 👋 How are you doing?',
        time: '09:46',
        isRead: true,
        isTyping: false,
        statusColor: Colors.yellow,
      ),
      MessageModel(
        name: 'Adom Shafi',
        avatarUrl: 'images/avatar2.png',
        message: 'Typing...',
        time: '08:42',
        isRead: true,
        isTyping: true,
        statusColor: Colors.blue,
      ),
      MessageModel(
        name: 'HR Rumen',
        avatarUrl: 'images/avatar3.png',
        message: 'You: Cool! 😎 Let’s meet at 18:00 near...',
        time: 'Yesterday',
        isRead: true,
        isTyping: false,
        statusColor: Colors.green,
      ),
      MessageModel(
        name: 'Anjelina',
        avatarUrl: 'images/avatar4.png',
        message: 'You: Hey, will you come to the party...',
        time: '07:56',
        isRead: true,
        isTyping: false,
        statusColor: Colors.red,
      ),
      MessageModel(
        name: 'Alexa Shorna',
        avatarUrl: 'images/avatar5.png',
        message: 'Thank you for coming! Your or...',
        time: '05:52',
        isRead: true,
        isTyping: false,
        statusColor: Colors.green,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios_new)
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    child: Text(
                      'Messages',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for chats & messages',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: messages.length,
                separatorBuilder: (_, __) => const Divider(indent: 82),
                itemBuilder: (context, index) {
                  final msg = messages[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c) => const ChatPage()));
                    },
                    child: ListTile(
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundImage: AssetImage(msg.avatarUrl),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 7,
                              child: CircleAvatar(
                                radius: 5,
                                backgroundColor: msg.statusColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Text(
                        msg.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        msg.isTyping ? 'Typing...' : msg.message,
                        style: TextStyle(
                          color: msg.isTyping ? Colors.blue : Colors.black54,
                        ),
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            msg.time,
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          const SizedBox(height: 4),
                          Icon(
                            Icons.done_all,
                            color: msg.isRead ? Colors.blue : Colors.grey,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageModel {
  final String name;
  final String avatarUrl;
  final String message;
  final String time;
  final bool isRead;
  final bool isTyping;
  final Color statusColor;

  MessageModel({
    required this.name,
    required this.avatarUrl,
    required this.message,
    required this.time,
    required this.isRead,
    required this.isTyping,
    required this.statusColor,
  });
}
