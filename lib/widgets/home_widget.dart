import 'package:flutter/material.dart';
import 'package:partyone_mobile/screens/party_detail.dart';
import 'package:partyone_mobile/widgets/hash_tag.dart';

///번개 탭 눌렀을 때 나오는 화면
class PartyHome extends StatefulWidget {
  final String partyCategory; // 취미, 번개
  PartyHome({super.key, required this.partyCategory});

  Map<String, Map<String, dynamic>> categoryVariables = {
    "Thunder": {
      "crossAxisCount": 2,
      "aspectRatio": 2 / 1,
    },
    "Hobby": {
      "crossAxisCount": 1,
      "aspectRatio": 3 / 1,
    }
  };
  @override
  State<PartyHome> createState() => _PartyHomeState();
}

class _PartyHomeState extends State<PartyHome> {
  final List<Map> data = [
    {
      "Where": "신촌",
      "When": "10.27",
      "Name": "축구",
      "img": "assets/images/soccer.jpg"
    },
    {
      "Where": "연희동",
      "When": "01.17",
      "Name": "밥먹을 사람~",
      "img": "assets/images/food.jpg"
    },
    {
      "Where": "강남",
      "When": "09.15",
      "Name": "코딩",
      "img": "assets/images/food.jpg"
    },
    {
      "Where": "강남",
      "When": "09.15",
      "Name": "코딩",
      "img": "assets/images/food.jpg"
    },
    {
      "Where": "강남",
      "When": "09.15",
      "Name": "코딩",
      "img": "assets/images/food.jpg"
    },
    {
      "Where": "강남",
      "When": "09.15",
      "Name": "코딩",
      "img": "assets/images/food.jpg"
    },
  ];

  final _valueList = ['카테고리', '카테고리 1', '카테고리 2', '카테고리 3'];

  var _selectedValue = '카테고리';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        //SliverAppBar의 높이 설정
        toolbarHeight: 36.0,
        backgroundColor: Colors.white,
        expandedHeight: 36.0,
        //SliverAppBar의 그림자 정도
        elevation: 0.0,
        //SliverAppBar title
        title: DropdownButton(
          value: _selectedValue,
          items: _valueList.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedValue = value.toString();
            });
          },
        ),
        pinned: true,
        floating: true,
      ),
      SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget
              .categoryVariables[widget.partyCategory]!["crossAxisCount"]!,
          mainAxisExtent: 240,
        ),
        delegate: SliverChildBuilderDelegate(
          childCount: data.length,
          (BuildContext context, int index) {
            return PartyCard(
                aspectRatio: widget
                    .categoryVariables[widget.partyCategory]!["aspectRatio"],
                partyName: data[index]["Name"],
                partyWhen: data[index]["When"],
                partyWhere: data[index]["Where"],
                partyImage: data[index]["img"]);
          },
        ),
      )
    ]);
  }
}

//PartyCard 하나
class PartyCard extends StatelessWidget {
  final partyName;
  final partyWhen;
  final partyWhere;
  final partyImage;
  final aspectRatio;

  const PartyCard(
      {super.key,
      required this.aspectRatio,
      required this.partyName,
      required this.partyWhen,
      required this.partyWhere,
      required this.partyImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PartyDetail(),
              fullscreenDialog: true,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //사진 이미지
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    image: AssetImage(partyImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    partyName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                children: const [
                  HashTag(hashtag: "해시태그 1"),
                  HashTag(hashtag: "해시태그 2"),
                  HashTag(hashtag: "해시태그 3")
                ],
              )
            ],
          ),
        ));
  }
}
