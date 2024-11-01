import 'package:flutter/material.dart';

import '../../message/pages/message_view.dart';
import '../../profile/pages/profile_view.dart';
import '../../setting/pages/setting_view.dart';
import 'home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // const HomePage({super.key});
  var listOfPages = [
    const HomeView(),
    const MessageView(),
    const ProfileView(),
    const SettingView(),
  ];

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: listOfPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
            label: "Home",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_rounded),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
