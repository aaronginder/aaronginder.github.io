import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'package:portfolio/models/service.dart';
import 'package:portfolio/screens/service/service_card.dart';
import 'package:portfolio/widgets/section_title.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: "Service Offerings",
            subtitle: "My Strong Areas",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                services.length, (index) => ServiceCard(index: index)),
          ),
        ],
      ),
    );
  }
}
