//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/information_item.dart';
import 'package:miniprofile/main.dart';

class InformationCard extends StatelessWidget {
  InformationCard({
    super.key, required this.guild, required this.magic, required this.loves, required this.team,
   
  });

  final String guild;
  final String magic;
  final String loves;
  final String team;
  

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
        child: Container(
            width: 310.0,
            height: 290.0,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  InformationItem(
                      iconData: Icons.home,
                      iconColor: Colors.blue,
                      title: "Guild",
                      details: guild),
                  SizedBox(
                    height: 20.0,
                  ),
                  InformationItem(
                      iconData: Icons.auto_awesome,
                      iconColor: Colors.yellowAccent[400],
                      title: "Magic",
                      details: magic),
                  SizedBox(
                    height: 20.0,
                  ),
                  InformationItem(
                      iconData: Icons.favorite,
                      iconColor: Colors.pinkAccent[400],
                      title: "Loves",
                      details: loves),
                  SizedBox(
                    height: 20.0,
                  ),
                  InformationItem(
                      iconData: Icons.people,
                      iconColor: Colors.lightGreen[400],
                      title: "Team",
                      details: team),
                ],
              ),
            )));
  }
}
