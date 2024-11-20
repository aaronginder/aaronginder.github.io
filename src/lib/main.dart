import 'package:flutter/material.dart';
import 'package:portfolio/constants/styles.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aaron Ginder Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        inputDecorationTheme: kDefaultInputDecorationTheme,
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(
        homeKey: GlobalKey(),
        aboutKey: GlobalKey(),
        portfolioKey: GlobalKey(),
        servicesKey: GlobalKey(),
        testimonialKey: GlobalKey(),
        contactKey: GlobalKey(),
      ),
    );
  }
}
