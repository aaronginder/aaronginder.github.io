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

  // Set global keys for navigation purposes
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey servicesKey;
  final GlobalKey portfolioKey;
  final GlobalKey testimonialKey;
  final GlobalKey contactKey;

  const HomeScreen({
    super.key,
    required this.homeKey,
    required this.aboutKey,
    required this.servicesKey,
    required this.portfolioKey,
    required this.testimonialKey,
    required this.contactKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                key: homeKey,
                child: WebBanner(
                  homeKey: homeKey,
                  aboutKey: aboutKey,
                  servicesKey: servicesKey,
                  portfolioKey: portfolioKey,
                  testimonialKey: testimonialKey,
                  contactKey: contactKey,
                )),
            SizedBox(height: kDefaultPadding * 2),
            Container(key: aboutKey, child: AboutSection()),
            Container(key: servicesKey, child: ServiceSection()),
            Container(key: portfolioKey, child: RecentSection()),
            Container(key: testimonialKey, child: FeedbackSection()),
            SizedBox(height: kDefaultPadding),
            Container(key: contactKey, child: ContactSection()),
          ],
        ),
      ),
      // floatingActionButton: ContactButton(text: "Contact Me!"),
    );
  }
}
