import 'package:flutter/material.dart'; //Import flutter
import 'package:flutter_inscription_connexion/constants.dart'; //Import couleur

class RoundedLogin extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedLogin({
    Key key,
    this.text,
    this.press,
    this.color = PrimaryWhite,
    this.textColor = PrimaryColorLogin,
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
              color: Colors.white,
              borderRadius: new BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                // Taille bouton
                onPressed: press,
                child: Text(
                  text,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
