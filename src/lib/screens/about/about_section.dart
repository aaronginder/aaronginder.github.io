import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/about/components/about_title_with_sign.dart';
import 'package:portfolio/screens/about/components/experience_card.dart';
import 'package:portfolio/screens/about/components/about_section_text.dart';
import 'package:portfolio/widgets/custom_outline_button.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      child: Column(
        children: [
          const Row(
            children: [
              AboutTitleWithSign(),
              // Wrap in exapnded for text wrapping to fill the space
              Expanded(
                child: AboutSectionText(
                  text:
                      "A Google Cloud certified leader in cloud engineering and software development.\n"
                      "I currently work as a lead software engineer in the telecommunications industry.\n"
                      "My expertise is in data engineering, SRE and devops in Google Cloud Platform and experience in AWS.",
                ),
              ),
              ExpierenceCard(
                yearsOfExperience: "6",
              ),
              Expanded(
                child: AboutSectionText(text: "Sample text here"),
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding * 2),
          CustomOutlineButton(
            imageSource: "assets/images/hand.png",
            text: "Click here to download my CV!",
            press: () {},
          ),
        ],
      ),
    );
  }
}
