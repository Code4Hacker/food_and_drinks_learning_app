import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlugScreen extends StatefulWidget {
  const SlugScreen({super.key});

  @override
  State<SlugScreen> createState() => _SlugScreenState();
}

class _SlugScreenState extends State<SlugScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/onboarding.jpg")
        ],
      ),
    );
  }
}