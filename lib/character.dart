//import 'dart:html';

import 'package:flutter/material.dart';

class Character extends StatelessWidget {
  const Character(
      {super.key,
      required this.image,
      required this.name,
      required this.role,
      required this.birthday,
      required this.age,
      required this.guild,
      required this.magic,
      required this.loves,
      required this.team});

  final AssetImage image;

  final String name;
  final String role;

  final String birthday;
  final int age;

  final String guild;
  final String magic;
  final String loves;
  final String team;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
