import 'package:devfolio/widgets/main_desktop.dart';
import 'package:devfolio/widgets/main_mobile.dart';
import 'package:flutter/material.dart';
import 'package:devfolio/constants/colors.dart';
import 'package:devfolio/widgets/header_desktop.dart';
import 'package:devfolio/widgets/header_mobile.dart';
import 'package:devfolio/widgets/drawer_mobile.dart';
import 'package:devfolio/constants/size.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // To open drawer programmatically, need to create a GlobalKey of the
  // Scaffold state which can be passed to the Scaffold key.
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    // Wrap Scaffold in layout builder to dynamically
    // the layout of the app depending on the screen size
    // Must pass context for dimensions of the screen size
    // and constraints to identify the limitations of the size
    // to the Layout builder
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey, // use scaffold state to open drawer
        backgroundColor: CustomColor.scaffoldBg,
        // Short-hand conditional to assign end drawer to be null
        // drawer: -> opens on the left hand side
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          // Scrolling up and down
          scrollDirection: Axis.vertical,
          children: [
            // Toolbar
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState
                      ?.openEndDrawer(); // ? makes it nullable
                },
              ),
            // Main
            // MainDesktop(),
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),
            // About
            Container(
              height: 100,
              width: double.infinity,
            ),
            // Skills
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.teal.shade200,
            ),
            // Projects
            Container(
              height: 500,
              width: double.infinity,
            ),
            // Section
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.teal.shade200,
            ),
            // Footer
            Container(
              height: 500,
              width: double.infinity,
            ),
          ],
        ),
      );
    });
  }
}
