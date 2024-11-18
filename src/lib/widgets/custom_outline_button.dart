import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.imageSource,
    required this.text,
    required this.press,
  });

  final String imageSource, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    // Automatically fit the box around the size of the button
    return FittedBox(
      // Create a button that lets someone download my CV
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              50,
            ),
            side: const BorderSide(
              color: Color(0xFFEDEDED),
            ),
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              imageSource,
              height: 40,
            ),
            const SizedBox(
              width: kDefaultPadding,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
