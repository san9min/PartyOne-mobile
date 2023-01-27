import 'package:flutter/material.dart';
import 'package:partyone/screens/tab_screen/home_screen.dart';
import 'package:partyone/screens/tab_screen/message_screen.dart';
import 'package:partyone/screens/tab_screen/search_screen.dart';
import 'package:partyone/screens/tab_screen/upload_screen.dart';
import 'package:partyone/screens/tab_screen/user_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int homeIdx = 0;

  void onClickTab(int idx) {
    setState(() {
      homeIdx = idx;
    });
  }

  final List<Widget> homeContents = <Widget>[
    HomeScreen(),
    const SearchScreen(),
    const UploadScreen(),
    const MessageScreen(),
    const UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeContents.elementAt(homeIdx),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onClickTab,
        currentIndex: homeIdx,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box, size: 32),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_rounded),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
