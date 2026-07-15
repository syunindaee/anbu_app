import 'package:flutter/material.dart';
import '../auth/parent_phone_page.dart';
import '../child/child_home_page.dart';
import '../parent/parent_home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [

              const Spacer(),

              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 70,
              ),

              const SizedBox(height: 20),

              const Text(
                "안부",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "AI가 부모님의 일상을\n함께합니다.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.elderly, size: 30),
                  label: const Text(
                    "부모님입니다",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ParentPhonePage(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.family_restroom, size: 30),
                  label: const Text(
                    "자녀입니다",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ChildHomePage(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}