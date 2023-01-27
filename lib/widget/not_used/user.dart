import 'package:flutter/material.dart';
import 'package:partyone/widget/hash_tag.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: const SizedBox(
              height: 64,
              width: 64,
              child: Image(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
            "박찬혁",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          const Text(
            "I'm  an  ACE",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Row(
            children: const [
              HashTag(hashtag: "개발"),
              HashTag(hashtag: "백엔드"),
              HashTag(hashtag: "인공지능"),
              HashTag(hashtag: "술"),
              HashTag(hashtag: "INTP"),
            ],
          ),
          Row(
            children: const [
              Text(
                "연세대학교/ 전기전자공학부",
                style: TextStyle(color: Colors.black38),
              )
            ],
          )
        ],
      ),
    );
  }
}
