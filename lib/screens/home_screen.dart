import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int home_idx = 0;

  void OnClickTab(int idx) {
    setState(() {
      home_idx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: OnClickTab,
        currentIndex: home_idx,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball_rounded),
            label: '취미',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box, size: 32),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thunderstorm),
            label: '번개',
          ),
        ],
      ),
    );
  }
}
