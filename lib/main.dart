//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/character.dart';
import 'package:miniprofile/information_card_widget.dart';
import 'package:miniprofile/information_item.dart';
import 'package:miniprofile/character_information_card.dart';

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
  final List<Character> character = [erza, lucy];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
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
      body: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        shape: CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          child: Icon(Icons.add),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.deepPurple.shade800, Colors.deepPurpleAccent],
              )),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple.shade800, Colors.deepPurpleAccent],
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 110.0,
                    ),
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage: erza.image,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(erza.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      erza.role,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    )
                  ]),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(child: InformationCardWidget()),
                ),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: 20.0,
              right: 20.0,
              child: CharacterInformationCard(
                counter: counter,
                birthday: erza.birthday,
                age: erza.age,
              ))
        ],
      ),
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
