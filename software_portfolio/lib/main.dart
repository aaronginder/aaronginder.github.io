import 'package:flutter/material.dart';
import 'package:software_portfolio/static/constants.dart';
import 'package:software_portfolio/view/spalsh_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: splashBgColor),
          scaffoldBackgroundColor: splashBgColor,
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)
              .copyWith(
                  bodyLarge: const TextStyle(color: bodyTextColor),
                  bodyMedium: const TextStyle(color: bodyTextColor),
                  bodySmall: const TextStyle(color: bodyTextColor))),
      home: SplashView(),
    );
  }
}
