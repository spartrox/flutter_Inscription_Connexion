import 'package:flutter/material.dart'; //Import flutter
import 'package:flutter_inscription_connexion/constants.dart'; //Import couleur
import 'package:flutter_inscription_connexion/components/text_field_container.dart';

class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPassword({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: PrimaryWhite,
        decoration: InputDecoration(
          hintText: "Votre mot de passe",
          hintStyle: TextStyle(
              color: Colors.white, fontSize: 19), // Changer la couleur du texte
          icon: Icon(
            Icons.lock,
            color: PrimaryWhite,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: PrimaryWhite,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
