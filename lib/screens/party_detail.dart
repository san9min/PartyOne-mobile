import 'package:flutter/material.dart';
import 'package:partyone/screens/not_used/hobby/hobby_log.dart';
import 'package:partyone/screens/announcement.dart';
import 'package:partyone/screens/member_preview.dart';
import 'package:partyone/widget/share.dart';

class PartyDetail extends StatefulWidget {
  const PartyDetail({super.key});

  @override
  State<PartyDetail> createState() => _PartyDetailState();
}

class _PartyDetailState extends State<PartyDetail> {
  bool boxBoolean = true;

  void boxBooleanToTrue() {
    setState(() {
      boxBoolean = true;
    });
  }

  void boxBooleanToFalse() {
    setState(() {
      boxBoolean = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text("취미팟 이름"),
        actions: [
          Row(
            children: [
              InkWell(
                onTap: (() => shareKakao()),
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffFEE500),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(Icons.chat_bubble)),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: (() => {print('heart clicked')}),
            child: const Icon(Icons.heart_broken_rounded),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 40,
          ),
          child:
              //전체 Column
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HobbyLog()));
                },
                child: AspectRatio(
                  aspectRatio: 4 / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/soccer.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              captinContainer(boxBoolean),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => (const Announcement())),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 50,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green.shade700),
                      child: const Text(
                        "공지",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MemberPreview(),
                        ),
                      )
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2 - 50,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green.shade300),
                      child: const Text(
                        "멤버",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => print('가입 클릭'),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                  child: const Text(
                    '가입',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//파티장 박스 옆에 버튼 누르면 변경되게 하는 것.
  Widget captinContainer(bool boolean) {
    if (boolean) {
      return AspectRatio(
        aspectRatio: 4 / 1,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: MediaQuery.of(context).size.height / 8,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          child:
              //container안 전체 Row
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //이 Row는 파티장 프로필하고 버튼을 양쪽으로 이분하기 위한 용도
              Row(
                children: [
                  //이 컨테이너는 파티장 프로필 사진과 이름 학교를 넣는 용도
                  Container(
                    width: MediaQuery.of(context).size.height / 16,
                    height: MediaQuery.of(context).size.height / 16,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/profile.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(400),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "파티장",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("연세대학교"),
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: boxBooleanToFalse,
                child: const Icon(Icons.keyboard_arrow_down),
              )
            ],
          ),
        ),
      );
    } else {
      return AspectRatio(
        aspectRatio: 5 / 3,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height / 16,
                        height: MediaQuery.of(context).size.height / 16,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/profile.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(400),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "파티장",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("연세대학교"),
                        ],
                      )
                    ],
                  ),
                  InkWell(
                    onTap: boxBooleanToTrue,
                    child: const Icon(Icons.keyboard_arrow_up),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('하...하...하...'),
                ],
              )
            ],
          ),
        ),
      );
    }
  }
}
