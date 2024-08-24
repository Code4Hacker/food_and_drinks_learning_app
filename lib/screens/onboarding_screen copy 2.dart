import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Stack(
            children: [
              Image.asset("assets/onboarding.jpg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),
          SafeArea(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color.fromARGB(34, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    AzizaText(name: "Smart"),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: AzizaText(name: "Cooking"),
                    ),
                    AzizaText(name: "Experience"),
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
            ],
          ),
          Column(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Center(
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(36, 255, 255, 255),
                        borderRadius: BorderRadius.circular(50)),
                    width: 240,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  CupertinoIcons.arrow_left,
                                  size: 18,
                                )),
                            const Spacer(),
                            Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  CupertinoIcons.arrow_right,
                                  color: Colors.white,
                                  size: 18,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AzizaText extends StatelessWidget {
  String name;
  AzizaText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.lato(
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w600)),
    );
  }
}
