import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fond.png"), fit: BoxFit.cover)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 110,
            left: 80,
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
          child,
        ],
      ),
    );
  }
}
