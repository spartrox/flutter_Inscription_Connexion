import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        // bordure bouton
        border: new Border.all(
          color: Colors.white,
          width: 0.8,
        ),
        borderRadius: new BorderRadius.circular(15.0),
      ),
      child: child,
    );
  }
}
