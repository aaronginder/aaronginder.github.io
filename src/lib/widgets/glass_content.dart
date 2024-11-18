import 'dart:ui';
import 'package:portfolio/constants/styles.dart';
import 'package:flutter/material.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints: BoxConstraints(
              maxWidth: 1200, maxHeight: size.height * 0.6), // should be 0.7
          width: double.infinity,
          color: Colors.white.withOpacity(
              0), // make the container transparent with a backdrop blur
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.white),
              ),
              const Text(
                "Aaron \nGinder",
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              Text(
                "Lead Software Developer",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// TODO: decide whether to keep logo
        // Image.asset(
        //   "assets/icons/logo.png",
        //   width: 200,
        //   height: 150,
        // ),
        const Spacer(),
        GlassContent(size: size),
        const Spacer(flex: 3),
      ],
    );
  }
}
