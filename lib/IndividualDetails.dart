import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ngo/heading.dart';

class IndividualDetails extends StatefulWidget {
  final String title;
  final String subtitle;
  const IndividualDetails({Key? key, this.title = "", this.subtitle = ""})
      : super(key: key);

  @override
  _IndividualDetailsState createState() => _IndividualDetailsState();
}

class _IndividualDetailsState extends State<IndividualDetails> {
  List<Map> temp = [
    {"image": "assets/surface1.png", "name": "Main light"},
    {"image": "assets/furniture-and-household.png", "name": "Desk Light"},
    {"image": "assets/bed (1).png", "name": "Bed Light"},
  ];
  List<Map> stemp = [
    {"image": "assets/surface2.png", "name": "Birthday"},
    {"image": "assets/surface2.png", "name": "Party"},
    {"image": "assets/surface2.png", "name": "Relax"},
    {"image": "assets/surface2.png", "name": "Fun"},
  ];
  List<Color> ctemp = [
    Colors.deepOrange.shade300,
    Colors.purple,
    Colors.blue,
    Colors.green,
  ];
  List<Color> cltemp = [
    Colors.deepOrange.shade300,
    Colors.lightGreenAccent.shade400,
    Colors.blue.shade600,
    Colors.purple.shade800,
    Colors.purpleAccent,
    Colors.yellow.shade600,
  ];
  double _currentSliderValue = 20;
  Color color = Colors.yellow.shade600;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D47A1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '${widget.title.split(" ")[0]}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '${widget.title.split(" ")[1]}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            '${widget.subtitle}',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 12,
                            left: 58,
                            child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: color.withOpacity(
                                        _currentSliderValue * 0.01),
                                    borderRadius: BorderRadius.circular(20)))),
                        Positioned(
                          child: Image(
                            image: AssetImage("assets/Group 38.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: index != 1
                          ? Colors.grey.shade100
                          : Colors.indigo.shade900,
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                            // width: 50,
                            image: AssetImage(temp[index]["image"]),
                          ),
                          Text(
                            '${temp[index]["name"]}',
                            style: TextStyle(
                              color: index != 1 ? Colors.indigo : Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: (Column(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              // bottom: 0,
                              // left: 10,
                              // right: 10,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage(
                                          "assets/Icon awesome-power-off.png",
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Intensity",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(image: AssetImage("assets/solution1.png")),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Slider(
                                value: _currentSliderValue,
                                min: 0,
                                max: 100,
                                divisions: 100,
                                label: _currentSliderValue.round().toString(),
                                onChanged: (double value) {
                                  setState(() {
                                    _currentSliderValue = value;
                                  });
                                },
                              ),
                            ),
                            Image(
                              image: AssetImage("assets/solution1.png"),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Row(
                            children: [
                              Text(
                                "Colors",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.deepOrange.shade300;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.deepOrange.shade300,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.lightGreenAccent.shade400;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    Colors.lightGreenAccent.shade400,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.blue.shade600;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.blue.shade600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.purple.shade800;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.purple.shade800,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.purpleAccent;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.purpleAccent,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.yellow.shade600;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.yellow.shade600,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: const Text(
                                "+",
                                textScaleFactor: 4,
                              ),
                              minRadius: 50,
                              maxRadius: 50,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Scenes",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: GridView.count(
                            childAspectRatio: 3,
                            physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            children: List.generate(stemp.length, (index) {
                              return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    color: ctemp[index]),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        height: 30,
                                        width: 30,
                                        image:
                                            AssetImage(stemp[index]["image"]),
                                      ),
                                      Text(
                                        '${stemp[index]["name"]}',
                                        style: const TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ]),
                              );
                            }),
                          ),
                        ),
                      ],
                    )),
                    height: 450,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    width: 500,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/bulb.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Icon feather-home.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/Icon feather-settings.png"), label: ""),
        ],
      ),
    );
  }
}
