import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/models/recent_work.dart';
import 'package:portfolio/screens/recent/components/recent_banner.dart';
import 'package:portfolio/screens/recent/components/recent_word_card.dart';
import 'package:portfolio/widgets/section_title.dart';

class RecentSection extends StatelessWidget {
  const RecentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: const BoxDecoration(
        color: Color(0xFFF7E8FF),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      // TODO - add labels to each card for categorisation
      // TODO - add filter button to select certain categories
      // TODO - add logo and link
      // TODO - add button to show more
      child: Column(
        children: [
          Column(
            children: [
              /// Transform.translate method with offset moves the child widget
              /// and adjusts the Y-axis element as per configuration.
              /// The below moves the child in between the two containers
              Transform.translate(
                offset: const Offset(0, -80),
                child: const RecentBanner(),
              ),
              const SectionTitle(
                title: "Recent Works",
                subtitle: "Check out my projects",
                color: Color(0xFFFFB100),
              )
            ],
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              // X-axis spacing between the cards
              spacing: kDefaultPadding,

              /// Y-axis spacing between the cards
              runSpacing: kDefaultPadding * 2,
              children: [
                /// The spread operator (...) is used to take the elements of a
                /// list and insert them as individual elements in another list.
                /// This allows the Wrap widget’s children property to receive
                /// individual RecentWorkCard widgets instead of a single list.
                ...List.generate(
                    recentWorks.length,
                    (index) => RecentWorkCard(
                          index: index,
                          press: () {},
                        ))
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding * 5)
        ],
      ),
    );
  }
}
