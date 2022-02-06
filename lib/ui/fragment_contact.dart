import 'dart:html' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/decorations.dart';
import 'package:web_portfolio/ui/button_contact.dart';
import 'package:web_portfolio/theme_manager.dart';

class ContactFragment extends StatefulWidget {
  const ContactFragment({Key? key}) : super(key: key);

  @override
  _ContactFragmentState createState() => _ContactFragmentState();
}

class _ContactFragmentState extends State<ContactFragment> {

  BoxDecoration _boxDecoration = Decorations.accentContainer();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (builderContext) => MouseRegion(
        onEnter: (event) {
          _onPointerEnter();
        },
        onExit: (event) {
          _onPointerExit();
        },
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: _boxDecoration,
              child: OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                overflowAlignment: OverflowBarAlignment.center,
                overflowSpacing: 10,
                children: [
                  ContactButton(
                    icon: Image.asset("lib/images/linkedin.png"),
                    onPress: () {
                      _openURL("https://www.linkedin.com/in/shardul-gogate", "LinkedIn");
                    }
                  ),
                  ContactButton(
                    icon: Image.asset("lib/images/instagram.png"),
                    onPress: () {
                      _openURL("https://www.instagram.com/shardul.gogate/", "Instagram");
                    }
                  ),
                  ContactButton(
                    icon: Image.asset("lib/images/facebook.png"),
                    onPress: () {
                      _openURL("https://www.google.com", "Facebook");
                    }
                  ),
                  ContactButton(
                    icon: Image.asset("lib/images/twitter.png"),
                    onPress: () {
                      _openURL("https://www.google.com", "Twitter");
                    }
                  ),
                  ContactButton(
                    icon: Image.asset("lib/images/github.png"),
                    onPress: () {
                      _openURL("https://github.com/shardul-gogate", "GitHub");
                    }
                  ),
                  ContactButton(
                    icon: Icon(
                      CupertinoIcons.mail_solid,
                      color: ThemeManager.primaryText,
                    ),
                    onPress: () {
                    }
                  )
                ]
              ),
            )
          )
        ),
      )
    );
  }

  void _openURL(String url, String name) {
    html.window.open(url, name);
  }

  void _onPointerEnter() {
    setState(() {
      _boxDecoration = Decorations.roundedContainerShadow();
    });
  }

  void _onPointerExit() {
    setState(() {
      _boxDecoration = Decorations.accentContainer();
    });
  }
}
