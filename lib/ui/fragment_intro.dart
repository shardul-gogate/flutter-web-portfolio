import 'dart:async';
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

  int roleIndex = 0;
  String _currentRoleDisplayed = ApplicationStrings.roles[0];

  @override
  void initState() {
    super.initState();
    _setRoleTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (builderContext) => Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Container(
            margin: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 190,
                  child: Image(
                      image: AssetImage("lib/images/profile.png"),
                      fit: BoxFit.fitHeight
                  )
                ),
                const Gap(horizontal: 55),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ApplicationStrings.titleGreet,
                        style: TextStyles.getTitleGreetStyle(),
                        textAlign: TextAlign.left
                      ),
                      const Gap(vertical: 6),
                      Text(
                        ApplicationStrings.shardulGogate,
                        style: TextStyles.getTitleNameStyle(),
                        textAlign: TextAlign.left
                      ),
                      const Gap(vertical: 6),
                      OverflowBar(
                        alignment: MainAxisAlignment.start,
                        overflowAlignment: OverflowBarAlignment.start,
                        overflowSpacing: 5,
                        children: [
                          Text(
                            ApplicationStrings.roleIntro,
                            style: TextStyles.getRoleIntro(),
                            textAlign: TextAlign.left
                          ),
                          AnimatedContainer(
                            padding: const EdgeInsets.only(right: 40),
                            duration: const Duration(
                              milliseconds: 400
                            ),
                            child: Text(
                              _currentRoleDisplayed,
                              style: TextStyles.getTitleRoleStyle(),
                              textAlign: TextAlign.left
                            )
                          )
                        ]
                      )
                    ]
                  ),
                )
              ]
            )
          )
        )
      )
    );
  }

  void _setRoleTimer() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        setState(() {
          if(!mounted) return;
          roleIndex++;
          if(roleIndex >= ApplicationStrings.roles.length) {
            roleIndex = 0;
          }
          _currentRoleDisplayed = ApplicationStrings.roles[roleIndex];
        });
    });
  }
}
