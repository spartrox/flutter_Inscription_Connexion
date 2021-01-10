import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = PrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6), // espace entre les boutons
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.5,
            decoration: new BoxDecoration(
              // bordure bouton
              border: new Border.all(
                color: Colors.white,
                width: 0.8,
              ),
              borderRadius: new BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                // Taille bouton
                onPressed: press,
                child: Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
