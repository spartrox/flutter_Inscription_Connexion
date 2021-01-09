import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/Welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Taille en hauteur et Largeur de notre écran
    return Backgroundd(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("BIENVENUE,",
              style: TextStyle(
                  color: Color.fromRGBO(231, 247, 250, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          Container(
            width: size.width * 0.5,
            decoration: new BoxDecoration(
              border: new Border.all(
                color: Colors.white,
                width: 0.8,
              ),
              borderRadius: new BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                onPressed: () {},
                child: Text(
                  "CONNEXION",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
