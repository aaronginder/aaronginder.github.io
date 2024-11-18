import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact/components/social_card.dart';

class ContactBanner extends StatelessWidget {
  const ContactBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // ! Commented out as I don't use Skype
        // SocialCard(
        //   iconSrc: "assets/images/skype.png",
        //   name: "TheFlutterWay",
        //   color: const Color(
        //     0xFFD9FFFC,
        //   ),
        //   press: () {},
        // ),
        SocialCard(
          iconSrc: "assets/images/whatsapp.png",
          name: "TheFlutterWay",
          color: const Color(
            0XFFE4FFC7,
          ),
          press: () {},
        ),
        SocialCard(
          iconSrc: "assets/images/messenger.png",
          name: "TheFlutterWay",
          color: const Color(
            0xFFE8F0F9,
          ),
          press: () {},
        ),
      ],
    );
  }
}
