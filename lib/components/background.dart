import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: Image.asset(
            "assets/images/fond.png",
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: ListView(
            children: [
              child,
            ],
          ),
        )
      ],
    );
  }
}
