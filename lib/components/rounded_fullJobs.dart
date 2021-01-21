import 'package:flutter/material.dart'; //Import flutter
import 'package:flutter_inscription_connexion/constants.dart'; //Import couleur

class RoundedFullJobs extends StatelessWidget {
  final String text;
  //final String image;
  final Function press;
  final Color color, textColor;

  const RoundedFullJobs({
    Key key,
    this.text,
    //this.image,
    this.press,
    this.color = PrimaryWhite,
    this.textColor = PrimaryColorBlue,
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
            width: size.width * 0.7,
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
