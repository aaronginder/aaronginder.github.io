import 'package:flutter/material.dart';

class PersonHeader extends StatelessWidget {
  const PersonHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 639, maxHeight: 860),
        child: Image.asset("assets/images/memoji_person.png"),
      ),
    );
  }
}
