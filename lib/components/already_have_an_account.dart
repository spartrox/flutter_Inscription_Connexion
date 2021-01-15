import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login
              ? "Vous n'avez pas de compte ? "
              : "Vous avez déja un compte ?  ",
          style: TextStyle(color: PrimaryWhite, fontSize: 18),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Inscription" : "Connexion",
            style: TextStyle(
              color: PrimaryColorBlue,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }
}
