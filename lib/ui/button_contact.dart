import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/decorations.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({ Key? key, required this.icon, required this.onPress }) : super(key: key);

  final Function onPress;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: () {
        onPress();
      },
      iconSize: 45,
    );
  }
}
