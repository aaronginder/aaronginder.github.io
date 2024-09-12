import 'package:flutter/material.dart';
import 'package:portfolio/styles/styles.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({super.key});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  // Create a scroll controller to manage the state of scrolling
  final ScrollController _scrollController = ScrollController();
  // Create Avatar visible flag. Starts with true when page loads
  bool _isAvatarVisible = true;
  // Create property for widht of header banner container
  double _containerWidth = double.maxFinite;

  @override
  void initState() {
    // Initialise the state when loading the page and set a scroll listener
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  // Dispose of the ScrollController state.
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // Function for handling conditional logic when to dynamically animate the
  // header banner as a user scrolls down the page by viewing the offset
  // property of the ScrollController
  void _onScroll() {
    if (_scrollController.offset > 100 && !_isAvatarVisible) {
      setState(
        () {
          _isAvatarVisible = false;
          _containerWidth = 250.0;
        },
      );
    } else if (_scrollController.offset <= 100 && !_isAvatarVisible) {
      setState(() {
        _isAvatarVisible = true;
        _containerWidth = double.maxFinite;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
      decoration: kHeaderDecoration,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Aaron",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  " Ginder",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.blue.shade400,
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Expanded(
            flex: 4,
            child: SizedBox(
              width: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      print("About pressed!");
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                    ),
                    child: const Text(
                      "About",
                      style: headerTextStyle,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      print("Skills pressed!");
                    },
                    child: const Text(
                      "Skills",
                      style: headerTextStyle,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      print("Projects pressed!");
                    },
                    child: const Text(
                      "Projects",
                      style: headerTextStyle,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Expanded(flex: 1, child: Placeholder()),
        ],
      ),
    );
  }
}
