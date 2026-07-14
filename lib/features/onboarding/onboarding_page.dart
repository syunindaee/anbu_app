import 'package:flutter/material.dart';

import '../parent/parent_home_page.dart';
import '../child/child_home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '안부',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                '안녕하세요 😊',
                style: TextStyle(fontSize: 24),
              ),

              const SizedBox(height: 60),

              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ParentHomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    '👵 부모님',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ChildHomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    '👨‍👩‍👧 자녀',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}