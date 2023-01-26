import 'package:flutter/material.dart';
import 'package:partyone/widget/share.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text(
        'PARTYONE',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
      ),
      actions: [
        InkWell(
          onTap: (() => {}),
          child: const Icon(
            Icons.notification_important_outlined,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: (() => {marketUrlShare()}),
          child: const Icon(
            Icons.share,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
      backgroundColor: Colors.white,
      // leadingWidth: 240,
      // leading: IconButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const UserScreen(),
      //         fullscreenDialog: true,
      //       ),
      //     );
      //   },
      //   icon: Row(
      //     children: [
      //       ClipRRect(
      //         borderRadius: BorderRadius.circular(80),
      //         child: const SizedBox(
      //           height: 36,
      //           width: 36,
      //           child: Image(
      //             image: AssetImage("assets/images/profile.jpg"),
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: const [
      //             Text(
      //               "박찬혁",
      //               style: TextStyle(
      //                   fontSize: 16,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w600),
      //             ),
      //             Text(
      //               "연세대학교",
      //               style: TextStyle(
      //                   fontSize: 12,
      //                   color: Colors.black,
      //                   fontWeight: FontWeight.w500),
      //             )
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    ));
  }
}
