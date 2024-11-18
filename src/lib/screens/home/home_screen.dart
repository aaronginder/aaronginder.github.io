import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/about/about_section.dart';
import 'package:portfolio/screens/contact/contact_section.dart';
import 'package:portfolio/screens/feedback/feedback_section.dart';
import 'package:portfolio/screens/recent/recent_section.dart';
import 'package:portfolio/screens/service/service_section.dart';
import 'package:portfolio/screens/home/banner.dart';

class HomeScreen extends StatelessWidget {
  /// Widget containing the home page construction of the website.
  /// The responsiveness conditional logic of the media screen size is determined
  /// in this module and subsequent transitions to accommodate for the screen
  /// size constraints.

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            WebBanner(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
      // floatingActionButton: ContactButton(text: "Contact Me!"),
    );
  }
}
