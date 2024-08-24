import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_studies/screens/onboarding_screen%20copy%202.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen()
    );
  }
}
