import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/strings.dart';
import 'package:web_portfolio/text_styles.dart';
import 'package:web_portfolio/ui/gap.dart';

class IntroFragment extends StatefulWidget {
  const IntroFragment({Key? key}) : super(key: key);

  @override
  _IntroFragmentState createState() => _IntroFragmentState();
}

class _IntroFragmentState extends State<IntroFragment> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (builderContext) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 210,
            child: Image(
              image: AssetImage("lib/images/profile.png"),
              fit: BoxFit.fitHeight
            )
          ),
          const Gap(horizontal: 70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ApplicationStrings.titleGreet,
                style: TextStyles.getTitleGreetStyle(),
                textAlign: TextAlign.left
              ),
              const Gap(vertical: 7),
              Text(
                ApplicationStrings.shardulGogate,
                style: TextStyles.getTitleNameStyle(),
                textAlign: TextAlign.left
              ),
              const Gap(vertical: 7),
              Text(
                ApplicationStrings.roleIntro,
                style: TextStyles.getTitleGreetStyle(),
                textAlign: TextAlign.left
              ),
              const Gap(vertical: 7),
              DefaultTextStyle(
                style: TextStyles.getRoleIntro(),
                child: AnimatedTextKit(
                  animatedTexts: _getAnimatedTextList(),
                  repeatForever: true,
                  displayFullTextOnTap: true,
                  pause: const Duration(seconds: 1)
                )
              )
            ]
          )
        ]
      )
    );
  }

  List<AnimatedText> _getAnimatedTextList() {
    List<AnimatedText> animatedTextList = [];
    for(String role in ApplicationStrings.roles) {
      animatedTextList.add(TypewriterAnimatedText(
        role,
        speed: const Duration(milliseconds: 50)
      ));
    }
    return animatedTextList;
  }
}
