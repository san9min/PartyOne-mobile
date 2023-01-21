import 'package:flutter/material.dart';
import 'package:partyone/screens/user.dart';
import 'package:partyone/widget/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int homeIdx = 0;

  void onClickTab(int idx) {
    setState(() {
      homeIdx = idx;
    });
  }

  final List<Widget> homeContents = <Widget>[
    PartyHome(partyCategory: "Hobby"),
    const Text("upload"),
    PartyHome(partyCategory: "Thunder"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 240,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const User(),
                fullscreenDialog: true,
              ),
            );
          },
          icon: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: const SizedBox(
                  height: 36,
                  width: 36,
                  child: Image(
                    image: AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "박찬혁",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "연세대학교",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: homeContents.elementAt(homeIdx),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onClickTab,
        currentIndex: homeIdx,
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
