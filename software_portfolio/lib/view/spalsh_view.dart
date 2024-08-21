import 'dart:async';
import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:software_portfolio/view/home.dart';
import 'package:software_portfolio/static/constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late String loadingText;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true); // Repeat animation

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
    loadingText = getRandomSplashText();
  }

  String getRandomSplashText() {
    final random = Random();
    return texts[random.nextInt(texts.length)];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Dynamic animated icon
            AnimatedIcon(
              icon: AnimatedIcons.menu_home,
              progress: _controller,
              size: 100,
              color: Colors.black,
            ),
            const SizedBox(height: 20),
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText(
                loadingText,
                speed: Duration(milliseconds: 60),
                cursor: '',
                textStyle: TextStyle(
                  fontFamily: 'Comforter',
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
