import 'package:flutter/material.dart';

class ChildHomePage extends StatelessWidget {
  const ChildHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('자녀 홈'),
      ),
      body: const Center(
        child: Text(
          '👨‍👩‍👧 자녀 화면',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}