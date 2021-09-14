import 'package:flutter/material.dart';
import 'package:ngo/constraints.dart';

class HeaderWithUser extends StatelessWidget {
  const HeaderWithUser({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Control \nPanel",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/user.png",
                  height: 200,
                  width: 100,
                )
              ],
            ),
            height: size.height * 0.5 - 25,
            decoration: new BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
