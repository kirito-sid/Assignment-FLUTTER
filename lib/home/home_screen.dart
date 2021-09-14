import 'package:flutter/material.dart';
import 'package:ngo/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D47A1),
      body: Body(),
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
