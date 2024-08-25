import 'package:flutter/material.dart';
import 'package:devfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      // Formatting the main banner height and width
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      // Avoiding overflowing issue when someone vertically shrinks
      // the browser
      constraints: BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi\n I'm Aaron\n A Full Stack Developer",
                style: TextStyle(
                  fontSize: 30,
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
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in touch"),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/memoji_hello.png",
            // Set to half of the screen width to auto scale image
            width: screenWidth / 3.0,
          ),
        ],
      ),
    );
  }
}
