import 'package:flutter/material.dart';

///번개 카드 누르면 나오는 상세 설명 화면
class ThunderDetail extends StatelessWidget {
  const ThunderDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("번개팟 이름"),
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(36),
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),

          ///파티장
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.circle, size: 48),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "파티장",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "연세대학교",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///공지, 멤버
          ///
          /*
          * TODO
          *공지랑 멤버 Navigation 되는 widget만들기
          */

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.red),
                child: const Text("공지"),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.green),
                child: const Text("멤버"),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 0.4,
                )),
            height: 100,
          )
        ]),
      ),
    );
  }
}
