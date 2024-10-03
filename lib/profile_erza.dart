//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/character_information_card.dart';
import 'package:miniprofile/information_card.dart';
import 'package:miniprofile/main.dart';

class ProfileErza extends StatelessWidget {
  ProfileErza({
    super.key,
  });

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
                  child: Center(
                      child: InformationCard(
                          guild: erza.guild,
                          magic: erza.magic,
                          loves: erza.loves,
                          team: erza.team)),
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
                birthday: erza.birthday,
                age: erza.age,
              ))
        ],
      ),
    );
  }
}
