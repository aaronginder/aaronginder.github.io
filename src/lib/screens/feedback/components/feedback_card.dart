import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/models/feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) => setState(() {
        isHover = value;
      }),
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.only(top: kDefaultPadding * 3),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultShadow],
        ),
        child: Column(
          children: [
            /// Transform.translate to
            Transform.translate(
              offset: const Offset(0, -55),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  boxShadow: [if (!isHover) kDefaultShadow],
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: const TextStyle(
                color: kTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            Text(
              feedbacks[widget.index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
