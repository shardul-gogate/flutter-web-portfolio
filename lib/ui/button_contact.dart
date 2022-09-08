import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/decorations.dart';

class ContactButton extends StatefulWidget {
  const ContactButton({ Key? key, required this.icon, required this.onPress }) : super(key: key);

  final Function onPress;
  final Widget icon;

  @override
  State<ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton> {

  BoxDecoration _boxDecoration = Decorations.orangeAccent();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _onPointerEnter();
      },
      onExit: (event) {
        _onPointerExit();
      },
      child: AnimatedContainer(
        padding: const EdgeInsets.all(15),
        duration: const Duration(
          milliseconds: 200
        ),
        decoration: _boxDecoration,
        child: IconButton(
          icon: widget.icon,
          onPressed: () {
            widget.onPress();
          },
          iconSize: 45,
        ),
      ),
    );
  }

  void _onPointerEnter() {
    setState(() {
      if(!mounted) return;
      _boxDecoration = Decorations.orangeAccentShadow();
    });
  }

  void _onPointerExit() {
    setState(() {
      if(!mounted) return;
      _boxDecoration = Decorations.orangeAccent();
    });
  }
}
