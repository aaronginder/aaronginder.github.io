// Experience Card Widget
import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';

class ExpierenceCard extends StatelessWidget {
  const ExpierenceCard({super.key, required this.yearsOfExperience});

  final String yearsOfExperience;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 6,
                color: const Color(0xFFA600FF).withOpacity(0.25))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Need to stack to overlay two text objects
            Stack(
              children: [
                Text(
                  yearsOfExperience,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = const Color(0xEFDFA3FF).withOpacity(0.5),
                    // Create a shadow effect to illuminate the text
                    shadows: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: const Color(0xFFA600FF).withOpacity(0.5))
                    ],
                  ),
                ),
                Text(
                  yearsOfExperience,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            const Text(
              "Years of Experience",
              style: TextStyle(
                color: Color(0xFFA600FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
