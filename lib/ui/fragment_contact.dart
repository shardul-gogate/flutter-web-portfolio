import 'dart:html' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/ui/button_contact.dart';
import 'package:web_portfolio/theme_manager.dart';

class ContactFragment extends StatefulWidget {
  const ContactFragment({Key? key}) : super(key: key);

  @override
  _ContactFragmentState createState() => _ContactFragmentState();
}

class _ContactFragmentState extends State<ContactFragment> {

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (builderContext) => Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Container(
            color: ThemeManager.primaryBackground,
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
      )
    );
  }

  void _openURL(String url, String name) {
    html.window.open(url, name);
  }
}
