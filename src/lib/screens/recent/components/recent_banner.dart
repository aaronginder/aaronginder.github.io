import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/widgets/default_button.dart';

class RecentBanner extends StatelessWidget {
  const RecentBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),
          // Vertical divider between the email icon and button
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Starting New Project?",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  "Get an estimate for the new project",
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
          DefaultButton(
            imageSrc: "assets/images/hand.png",
            text: "Reach out to me!",
            press: () {},
          )
        ],
      ),
    );
  }
}
