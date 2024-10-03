//import 'dart:html';

import 'package:flutter/material.dart';

class CharacterInformationCard extends StatelessWidget {
  const CharacterInformationCard({
    super.key,
    required this.counter,
    required this.birthday,
    required this.age,
  });

  final int counter;
  final String birthday;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              child: Column(
            children: [
              CharacterInformationHeader(
                title: "Battles",
              ),
              Text(
                "$counter",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          )),
          Container(
            child: Column(children: [
              CharacterInformationHeader(title: "Birthday"),
              Text(
                birthday,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ]),
          ),
          Container(
              child: Column(
            children: [
              CharacterInformationHeader(title: "Age"),
              Text(
                '$age yrs',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          )),
        ],
      ),
    ));
  }
}

class CharacterInformationHeader extends StatelessWidget {
  const CharacterInformationHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.grey[600], fontSize: 14.0),
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
