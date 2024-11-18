import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/models/service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({super.key, required this.index});

  final int index;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      // A tarnsaprent color gives a nice shadow-style effect
      hoverColor: Colors.transparent,
      // Animated container for cool selection animation
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          // Boolean if not hovered, show box shadow
          boxShadow: [if (!isHover) kDefaultCardShadow],
        ),
        // Inner image on the card
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 20),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Text(
              services[widget.index].title,
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
