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
        title: const Text("새 파티"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
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
}
