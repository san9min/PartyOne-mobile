import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "파티 만들기",
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 140,
                  color: Colors.grey.withOpacity(0.2),
                  child: GestureDetector(
                      onTap: () {
                        _showBottomSheet();
                      },
                      child: const Center(
                        child: Icon(
                          Icons.add_a_photo,
                        ),
                      ))),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '퀘스트',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'contents',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () => {},
                child: Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green.shade100),
                  child: const Text('만들기'),
                ),
              ),
              const Text("TODO : 날짜, 장소, 사진 추가")
            ],
          ),
        ),
      ),
    );
  }

  _showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                '앨범에서 사진 선택',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
