import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  // Scroll sections
  final ScrollController _scrollController = ScrollController();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final servicesKey = GlobalKey();
  final portfolioKey = GlobalKey();
  final testimonialKey = GlobalKey();
  final contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    // Function that scrolls to a section based on the context of what was selected
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  // List<Map<String, dynamic>> menuItems2 = [
  //   {
  //     "section": "Home",
  //     "route": const HomeScreen()
  //   },
  //   {
  //     "section": "About",
  //     "route": const AboutSection()
  //   }
  // ];
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portfolio",
    "Testimonial",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) {
    return InkWell(
      onTap: () {
        setState(
          () {
            // Navigation logic to move to the correct global key
            switch (index) {
              case 0:
                _scrollToSection(homeKey);
                break;
              case 1:
                _scrollToSection(aboutKey);
                break;
              case 2:
                _scrollToSection(servicesKey);
                break;
              case 3:
                _scrollToSection(portfolioKey);
                break;
              case 4:
                _scrollToSection(testimonialKey);
                break;
              case 5:
                _scrollToSection(contactKey);
                break;
            }
            selectedIndex = index;
          },
        );
      },
      onHover: (value) {
        setState(() {
          value ? hoverIndex = index : hoverIndex = selectedIndex;
        });
      },
      child: Container(
        constraints: const BoxConstraints(minWidth: 122),
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              menuItems[index],
              style: const TextStyle(
                fontSize: 20,
                color: kTextColor,
              ),
            ),
            // On hover
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex != index && hoverIndex == index
                  ? -20
                  : -32, // positions the hover
              child: Image.asset(
                "assets/images/Hover.png",
              ),
            ),
            // On tap
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: index == selectedIndex ? -2 : -32, // positions the hover
              child: Image.asset(
                "assets/images/Hover.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
