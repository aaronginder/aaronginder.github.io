import 'package:flutter/material.dart';
import 'package:devfolio/constants/colors.dart';
import 'package:devfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // TODO -> Change draw to be integrated in app rather than another tab
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  // Get the context of the navigator and clear state
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              titleTextStyle: const TextStyle(
                color: CustomColor.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              onTap: () {},
              leading: Icon(navIcons[i]),
              title: Text(
                  navTitles[i]), // TODO -> change this to be a map of lists
            )
        ],
      ),
    ); // responsible for opening draw on right side icon;
  }
}
