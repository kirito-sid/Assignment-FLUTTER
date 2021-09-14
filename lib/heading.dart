// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ngo/constraints.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Colors.white),
      width: 500,
    );
  }
}
