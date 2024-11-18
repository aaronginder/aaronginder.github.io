import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';

class SectionTitle extends StatelessWidget {
  // 
  const SectionTitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.color = const Color(0xFFFF0000),
  });

  final String title, subtitle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          // Header bar decoration
          Container(
            // Padding to add the black color of the container so the
            // top only has red
            margin: const EdgeInsets.only(right: kDefaultPadding),
            padding: const EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  color: kTextColor,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 50,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
