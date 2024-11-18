import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          animationDuration: const Duration(milliseconds: 200),
          backgroundColor: Colors.blue.withOpacity(0.4),
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding, horizontal: kDefaultPadding * 2),
        ),
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        onPressed: () {},
      ),
    );
  }
}
