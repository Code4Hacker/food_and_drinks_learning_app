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
  final dataset = [
    {
      "title1": "Smart",
      "title2": "Cooking",
      "title3": "Experience",
      "image": "assets/onboarding.jpg"
    },
    {
      "title1": "Enjoy",
      "title2": "With",
      "title3": "Professional",
      "image": "assets/home.jpg"
    },
    {
      "title1": "Lovely",
      "title2": "With",
      "title3": "Tastely",
      "image": "assets/onboarding.jpg"
    },
  ];
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              currentPage = value;
            }),
            itemCount: dataset.length,
            itemBuilder: (context, index) => Stack(
              children: [
                Image.asset(dataset[index]["image"]!,
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
                          AzizaText(name: dataset[index]["title1"]!),
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: AzizaText(name: dataset[index]["title2"]!),
                          ),
                          AzizaText(name: dataset[index]["title3"]!),
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
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  pageController.animateToPage(currentPage - 1,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.fastLinearToSlowEaseIn);
                                });
                              },
                              child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(
                                    CupertinoIcons.arrow_left,
                                    size: 18,
                                  )),
                            ),
                            const Spacer(),
                            for (int i = 0; i < dataset.length; i++) ...[
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  height: 10,
                                  width: i == currentPage ? 32 : 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white.withOpacity(
                                          i == currentPage ? 1 : 0.4)),
                                ),
                              ),
                            ],
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  pageController.animateToPage(currentPage + 1,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.fastLinearToSlowEaseIn);
                                });
                              },
                              child: Container(
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
                            ),
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
