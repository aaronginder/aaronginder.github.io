import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:software_portfolio/static/constants.dart';
import 'package:software_portfolio/static/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: splashBgColor,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0),
            child: Text(
              '< Aaron Ginder />',
              style: TextStyle(
                fontFamily: 'Comforter',
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () => {},
                child: Text('About Me'),
                style: buttonSettings(Colors.white)),
            TextButton(
                onPressed: () => {},
                child: Text('Skills'),
                style: buttonSettings(Colors.white)),
            TextButton(
                onPressed: () => {},
                child: Text('Projects'),
                style: buttonSettings(Colors.white)),
            TextButton(
                onPressed: () => {},
                child: Text('Contact'),
                style: buttonSettings(Colors.white)),
            TextButton(
              onPressed: () => {},
              child: Text('Resume'),
              style: buttonSettings(Colors.amberAccent),
            )
          ],
        ),
        backgroundColor: splashBgColor,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text('WELCOME TO MY PORTFOLIO 👋'),
                  Text('AARON'),
                  Text(
                    'GINDER',
                    style: TextStyle(fontSize: 50),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            )
          ],
        ));
  }
}
