import 'package:flutter/material.dart';
import 'package:flutter_inscription_connexion/constants.dart';
import 'package:flutter_inscription_connexion/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText; //Text à l'intérieur du bouton
  final IconData icon; //Icone
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.white, fontSize: 15), // Changer la couleur du texte
          border: InputBorder.none,
        ),
      ),
    );
  }
}
