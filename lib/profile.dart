//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/character.dart';
import 'package:miniprofile/character_information_card.dart';
import 'package:miniprofile/information_card.dart';


class Profile extends StatelessWidget {
  Profile({
    super.key, required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      backgroundImage: character.image,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(character.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      character.role,
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
                  child: Center(
                      child: InformationCard(
                          guild: character.guild,
                          magic: character.magic,
                          loves: character.loves,
                          team: character.team)),
                ),
              ),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.39,
              left: 20.0,
              right: 20.0,
              child: CharacterInformationCard(
                counter: 0, //counter
                birthday: character.birthday,
                age: character.age,
              ))
        ],
      ),
    );
  }
}
