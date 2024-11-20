import 'package:flutter/material.dart';
import 'package:portfolio/widgets/menu.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/widgets/glass_content.dart';

class WebBanner extends StatelessWidget {
  // Set global keys for navigation purposes
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey servicesKey;
  final GlobalKey portfolioKey;
  final GlobalKey testimonialKey;
  final GlobalKey contactKey;

  const WebBanner(
      {super.key,
      required this.homeKey,
      required this.aboutKey,
      required this.servicesKey,
      required this.portfolioKey,
      required this.testimonialKey,
      required this.contactKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxHeight: 200,
        minHeight: 150,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background 4.png"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            // const PersonHeader(), // Removed as I need to find an appropriate image
            Positioned(
              bottom: 0, // Move to bottom of container
              child: Menu(
                homeKey: homeKey,
                aboutKey: aboutKey,
                contactKey: contactKey,
                portfolioKey: portfolioKey,
                servicesKey: servicesKey,
                testimonialKey: testimonialKey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
