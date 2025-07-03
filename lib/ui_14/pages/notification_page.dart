import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  final List<Map<String, dynamic>> notifications = [
    {
      "avatar": "assets/avatars/1.png",
      "title": "Super Offer",
      "subtitle": "Get 60% off in our first booking",
      "time": "Sun, 12:40pm",
      "isHighlighted": true,
    },
    {
      "avatar": "assets/avatars/2.png",
      "title": "Super Offer",
      "subtitle": "Get 60% off in our first booking",
      "time": "Mon, 11:50pm",
    },
    {
      "avatar": "assets/avatars/3.png",
      "title": "Super Offer",
      "subtitle": "Get 60% off in our first booking",
      "time": "Tue, 10:56pm",
    },
    {
      "avatar": "assets/avatars/4.png",
      "title": "Super Offer",
      "subtitle": "Get 60% off in our first booking",
      "time": "Wed, 12:40pm",
    },
    {
      "avatar": "assets/avatars/5.png",
      "title": "Super Offer",
      "subtitle": "Get 60% off in our first booking",
      "time": "Fri, 11:50pm",
    },
    {
      "avatar": "assets/avatars/6.png",
      "title": "Super Offer",
      "subtitle": "Get 60% off in our first booking",
      "time": "Sat, 10:56pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Notification", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new, color: Colors.black)
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text("Clear all", style: TextStyle(color: Colors.blue)),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            tabs: const [
              Tab(text: "Recent"),
              Tab(text: "Earlier"),
              Tab(text: "Archieved"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                buildNotificationList(),
                buildNotificationList(),
                buildNotificationList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNotificationList() {
    return ListView.builder(
      itemCount: notifications.length,
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return Container(
          color: notification["isHighlighted"] == true ? Colors.blue.shade50 : Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(notification["avatar"]),
            ),
            title: Text(notification["title"], style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(notification["subtitle"]),
            trailing: Text(notification["time"], style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ),
        );
      },
    );
  }
}
