import 'package:flutter/material.dart';
import 'package:devfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  // Question mark after type makes this input optional...
  // Otherwise needs to be required
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text(
        "< Aaron Ginder />",
        style: TextStyle(
            fontFamily: 'Comforter',
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
            color: CustomColor.whiteSecondary),
      ),
    );
  }
}
