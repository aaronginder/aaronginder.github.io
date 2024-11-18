import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/models/feedback.dart';
import 'package:portfolio/screens/feedback/components/feedback_card.dart';
import 'package:portfolio/widgets/section_title.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Feedback",
            subtitle: "What keeps driving me!",
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                  feedbacks.length, (index) => FeedbackCard(index: index))
            ],
          ),
          const SizedBox(height: kDefaultPadding * 6)
        ],
      ),
    );
  }
}
