//import 'dart:html';

import 'package:flutter/material.dart';


class UserInformationCard extends StatelessWidget {
  const UserInformationCard({
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
              UserInformationHeader(
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
              UserInformationHeader(title: "Birthday"),
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
              UserInformationHeader(title: "Age"),
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

class UserInformationHeader extends StatelessWidget {
  const UserInformationHeader({
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
