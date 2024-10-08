import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  final List dashboardData = const [
    {
      "id": 1,
      "title": "Videos",
      "icon": Icons.play_arrow,
      "background_color": Colors.deepOrange,
    },
    {
      "id": 2,
      "title": "Subjects",
      "icon": Icons.book,
      "background_color": Colors.pink,
    },
    {
      "id": 3,
      "title": "Chat",
      "icon": Icons.chat,
      "background_color": Colors.purple,
    },
    {
      "id": 4,
      "title": "Settings",
      "icon": Icons.settings,
      "background_color": Colors.blue,
    },
    {
      "id": 5,
      "title": "Videos",
      "icon": Icons.play_arrow,
      "background_color": Colors.deepOrange,
    },
    {
      "id": 6,
      "title": "Subjects",
      "icon": Icons.book,
      "background_color": Colors.pink,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: ListTile(
              title: Text(
                'Usman Qureshi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Welcome back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: CircleAvatar(
                radius: 30,
                // backgroundImage: AssetImage('assets/cv.jpeg'), // Ensure the path is correct
                backgroundImage: AssetImage('assets/cv.jpeg'),
              ),
            ),
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          padding: const EdgeInsets.all(30),
          children: dashboardData.map((data) {
            return InkWell(
              onTap: () {
                print(data['id']);
                print(data['title']);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Theme.of(context).primaryColor.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: data['background_color'],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        data['icon'],
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      data['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        )
      ]),
    );
  }
}
