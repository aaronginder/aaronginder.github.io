import 'package:devfolio/styles/style.dart';
import 'package:devfolio/widgets/site_logo.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/constants/nav_items.dart';
import 'package:devfolio/constants/colors.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return // Main
        Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(), // Separate logo and buttons
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0), // Space buttons
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary),
                ),
              ),
            )
        ],
      ),
    );
  }
}
