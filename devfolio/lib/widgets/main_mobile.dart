import 'package:flutter/material.dart';
import 'package:devfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      // Set constraints when on a small screen to avoid overflow
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar image first, with a  "ShaderMask" widget that
          // creates an opacity style format using LinearGradient.
          // Shader takes bounds of the image as an input
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.8),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            // Change blend mode to ensure the image does not have
            // too much opacity. scrATop enables opacity manipulation
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/memoji_hello.png",
              width: screenWidth / 1.5,
              // height: screenHeight / 1.5,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Hi\n I'm Aaron\n A Full Stack Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // Wrap ElevatedButton in a SizedBox to add width
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          )
        ],
      ),
    );
  }
}
