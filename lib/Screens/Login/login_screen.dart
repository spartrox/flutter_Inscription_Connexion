import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/components/background.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity, // Sert à prendre toute la largeur de la page
          height: size.height, // Sert à prendre toute la hauteur de la page
          child: Stack(
            alignment: Alignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
