import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Message",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
          )),
    );
  }
}
