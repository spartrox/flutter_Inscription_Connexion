import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/components/background.dart';
import 'package:flutter_inscription_connexion/components/rounded_button.dart';
import 'package:flutter_inscription_connexion/components/rounded_input.dart';
import 'package:flutter_inscription_connexion/components/rounded_login.dart';
import 'package:flutter_inscription_connexion/components/already_have_an_account.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Taille en hauteur et Largeur de notre écran
    return Background(
      child: SingleChildScrollView(
        // Sert à rendre visible toute la page quelques soit l'écran
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.13),
            Text(
              "Veuillez vous identifier,",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
            SizedBox(
                height:
                    size.height * 0.01), // Espacement du titre et des boutons
            RoundedInputField(
              hintText: "Votre email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Votre mot de passe",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Votre numéro résident",
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.01),
            RoundedLogin(
              text: "LOGIN",
              color: Colors.red, //A MODIFIER
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(),
          ],
        ),
      ),
    );
  }
}
