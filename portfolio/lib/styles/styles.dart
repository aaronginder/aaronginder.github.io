import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(100.00),
  gradient: const LinearGradient(
    colors: [
      CustomColor.lightGrey1,
      CustomColor.lightGrey2,
      CustomColor.lightGrey1
    ],
  ),
);

const TextStyle headerTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 19.0,
);
