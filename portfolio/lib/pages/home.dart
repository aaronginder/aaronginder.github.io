import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
// TODO -> remove after dev
import 'package:portfolio/widgets/web/header_desktop.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        children: [
          // Header
          const HeaderDesktop(),
          // Main
          const SizedBox(
            height: 500,
            width: double.infinity,
            child: Text(
              "Main",
              textAlign: TextAlign.center,
            ),
          ),
          // Skills
          Container(
            height: 500,
            width: double.infinity,
            color: const Color.fromARGB(121, 209, 246, 253),
            child: const Text(
              "Skills",
              textAlign: TextAlign.center,
            ),
          ),
          // Projects
          const SizedBox(
            height: 500,
            width: double.infinity,
            // color: CustomColor.bgdark2,
            child: Text(
              "Projects",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 150.0,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            500.0,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: Text(
            "Contact Me!",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
          hoverColor: Colors.greenAccent.shade100,
          // elevation: 0,
          isExtended: true,
          focusColor: Colors.black,
        ),
      ),
    );
  }
}
