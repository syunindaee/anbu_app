import 'package:flutter/material.dart';
import '../features/onboarding/onboarding_page.dart';

class AnbuApp extends StatelessWidget {
  const AnbuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '안부',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const OnboardingPage(),
    );
  }
}