import 'package:flutter/material.dart';
import 'package:portfolio/widgets/menu.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/widgets/glass_content.dart';

class WebBanner extends StatelessWidget {
  const WebBanner({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxHeight: 900,
        minHeight: 700,
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
            // const PersonHeader(),  // Removed as I need to find an appropriate image
            Positioned(
              bottom: 0, // Move to bottom of container
              child: Menu(),
            )
          ],
        ),
      ),
    );
  }
}
