import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/constants/colors.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2),
      ),
    );
  }
}
