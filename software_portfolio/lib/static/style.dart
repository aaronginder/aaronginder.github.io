import 'package:flutter/material.dart';

// Standardise AppBar buttons
ButtonStyle buttonSettings(Color color) {
  return ButtonStyle(
      backgroundColor: WidgetStateProperty.all(color),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)))));
}
