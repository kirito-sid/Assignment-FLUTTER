// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ngo/IndividualDetails.dart';
import 'package:ngo/constraints.dart';
import 'package:ngo/headerwithuser.dart';
import 'package:ngo/heading.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map> temp = [
    {"image": "assets/bed.png", "name": "Bed room", "subtitle": "4 Lights"},
    {"image": "assets/room.png", "name": "Living room", "subtitle": "2 Lights"},
    {"image": "assets/kitchen.png", "name": "Kitchen", "subtitle": "5 Lights"},
    {
      "image": "assets/bathtube.png",
      "name": "Bed room",
      "subtitle": "1 Lights"
    },
    {"image": "assets/house.png", "name": "Bed room", "subtitle": "5 Lights"},
    {"image": "assets/balcony.png", "name": "Balcony", "subtitle": "2 Lights"},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(children: <Widget>[
        HeaderWithUser(size: size),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            width: 500,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "\n"
                      "    All Rooms",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: 630,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        children: List.generate(temp.length, (index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => IndividualDetails(
                                            title: temp[index]["name"],
                                            subtitle: temp[index]["subtitle"],
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              padding: EdgeInsets.only(left: 25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40),
                                    bottomLeft: Radius.circular(40),
                                    bottomRight: Radius.circular(40)),
                                color: Colors.grey.shade100,
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      height: 100,
                                      width: 90,
                                      image: AssetImage(temp[index]["image"]),
                                    ),
                                    Text(
                                      '${temp[index]["name"]}',
                                      style: const TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${temp[index]["subtitle"]}',
                                      style: const TextStyle(
                                          color: Colors.deepOrange,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          );
                        })))
              ],
            )),
      ]),
    );
  }
}
