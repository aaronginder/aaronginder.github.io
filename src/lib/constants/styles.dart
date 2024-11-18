import 'package:flutter/material.dart';

final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(50),
  borderSide: const BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);

const kDefaultPadding = 20.0;
