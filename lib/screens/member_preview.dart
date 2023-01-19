import 'package:flutter/material.dart';

class MemberPreview extends StatelessWidget {
  const MemberPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("멤버")),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(children: [
        ///파티장
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: const SizedBox(
                  height: 60,
                  width: 60,
                  child: Image(
                    image: AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "👑박찬혁",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    Text(
                      "연세대학교",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        ///관리자

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "관리자",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(children: const [
                MemberComponenet(),
                MemberComponenet(),
              ]),
            ],
          ),
        ),

        ///활동부원
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "활동부원",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(children: const [
                MemberComponenet(),
                MemberComponenet(),
                MemberComponenet(),
                MemberComponenet(),
                MemberComponenet(),
              ]),
            ],
          ),
        )
      ]),
    );
  }
}

//멤버 한명 렌더링 사진, 역할, 학교이름
class MemberComponenet extends StatelessWidget {
  const MemberComponenet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: const SizedBox(
                height: 48,
                width: 48,
                child: Image(
                  image: AssetImage("assets/images/profile.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "이름",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            const Text("연세대학교",
                style: TextStyle(fontSize: 8, fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
