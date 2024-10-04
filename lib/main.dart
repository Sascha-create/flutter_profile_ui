//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/character.dart';
import 'package:miniprofile/profile.dart';

void main() {
  runApp(MaterialApp(
    home: AppHome(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;

  List<Character> character = [erza, lucy];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          elevation: 10,
          backgroundColor: Colors.grey,
          indicatorColor: Colors.deepPurpleAccent,
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            currentIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.arrow_back), label: "zurück"),
            NavigationDestination(
                icon: Icon(Icons.arrow_forward), label: "nächste"),
          ]),
      body: Profile(character: character[currentIndex]),
    );
  }
}

final Character erza = Character(
    image: AssetImage('assets/erza.jpg'),
    name: "Erza Scarlet",
    role: "S Class Mage",
    birthday: "April 7th",
    age: 19,
    guild: "Fairytail, Magnolia",
    magic: "Spatial & Sword Magic, Telekinesis",
    loves: "eating Cakes",
    team: "Team Natsu");

final Character lucy = Character(
    image: AssetImage('assets/lucy.png'),
    name: "Lucy Heartfilia",
    role: "Mage",
    birthday: "July 1st",
    age: 17,
    guild: "Fairytail",
    magic: "Stellar Magic, Star Dress",
    loves: "eating Sausage",
    team: "Team Natsu");
