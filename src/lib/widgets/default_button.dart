import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.imageSrc,
    required this.text,
    required this.press,
    this.color = const Color.fromARGB(255, 172, 208, 249),
  });

  final String imageSrc, text;
  final Function()? press;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          const SizedBox(width: kDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}
