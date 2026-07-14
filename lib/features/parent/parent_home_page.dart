import 'package:flutter/material.dart';

class ParentHomePage extends StatelessWidget {
  const ParentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('부모님 홈'),
      ),
      body: const Center(
        child: Text(
          '👵 부모님 화면',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}