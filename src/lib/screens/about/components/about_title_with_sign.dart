import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';

class AboutTitleWithSign extends StatelessWidget {
  const AboutTitleWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: kDefaultPadding * 4),
        Text(
          "About \nmy story",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 50.0,
              ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Image.asset(
            "assets/images/signature (3).png",
            width: 150.0,
          ),
        ),
        const SizedBox(height: kDefaultPadding * 4),
      ],
    );
  }
}
