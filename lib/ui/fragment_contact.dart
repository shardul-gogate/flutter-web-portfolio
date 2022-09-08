import 'dart:html' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/strings.dart';
import 'package:web_portfolio/ui/button_contact.dart';
import 'package:web_portfolio/text_styles.dart';
import 'package:web_portfolio/ui/gap.dart';

class ContactFragment extends StatefulWidget {
  const ContactFragment({Key? key}) : super(key: key);

  @override
  _ContactFragmentState createState() => _ContactFragmentState();
}

class _ContactFragmentState extends State<ContactFragment> {

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (builderContext) => Column(
        children: [
          Text(
            ApplicationStrings.connectMe,
            style: TextStyles.getTitleRoleStyle()
          ),
          const Gap(vertical: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactButton(
                icon: Image.asset("lib/images/linkedin.png"),
                onPress: () {
                  _openURL("https://www.linkedin.com/in/shardul-gogate", "LinkedIn");
                }
              ),
              const Gap(horizontal: 20),
              ContactButton(
                icon: Image.asset("lib/images/twitter.png"),
                onPress: () {
                  _openURL("https://www.google.com", "Twitter");
                }
              ),
              const Gap(horizontal: 20),
              ContactButton(
                icon: Image.asset("lib/images/github.png"),
                onPress: () {
                  _openURL("https://github.com/shardul-gogate", "GitHub");
                }
              ),
              const Gap(horizontal: 20),
              ContactButton(
                icon: Image.asset("lib/images/facebook.png"),
                onPress: () {
                  _openURL("https://www.facebook.com/gogateshardul", "Facebook");
                }
              )
            ]
          ),
          const Gap(vertical: 20),
          Text(
            ApplicationStrings.resume,
            style: TextStyles.getTitleRoleStyle()
          ),
          const Gap(vertical: 20),
          ContactButton(
            icon: const Icon(
              CupertinoIcons.doc_person_fill
            ),
            onPress: () {
              _openURL("https://drive.google.com/file/d/1pUKiCgElAQA0OsCHv_rd3OMUaeCerQVQ/view?usp=sharing", "Shardul Gogate's Resume");
            }
          )
        ]
      )
    );
  }

  void _openURL(String url, String name) {
    html.window.open(url, name);
  }
}
