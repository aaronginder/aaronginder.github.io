// ContactSection

import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/screens/contact/components/contact_form.dart';
import 'package:portfolio/screens/contact/components/contact_banner.dart';
import 'package:portfolio/widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE80F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/bg_img_2.png",
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 2),
          const SectionTitle(
            title: "Contact Me",
            subtitle: "How to get in touch!",
            color: Color(0xFF07E24A),
          ),
          // ContactMe(),
          Container(
            margin: const EdgeInsets.only(top: kDefaultPadding * 2),
            constraints: const BoxConstraints(maxWidth: 1110),
            padding: const EdgeInsets.all(kDefaultPadding * 3),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: const Column(
              children: [
                ContactBanner(),
                SizedBox(height: kDefaultPadding * 2),
                ContactForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
