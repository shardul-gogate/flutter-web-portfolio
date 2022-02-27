import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/strings.dart';
import 'package:web_portfolio/theme_manager.dart';
import 'package:web_portfolio/text_styles.dart';
import 'package:web_portfolio/ui/gap.dart';

class TimelineFragment extends StatefulWidget {
  const TimelineFragment({Key? key}) : super(key: key);

  @override
  _TimelineFragmentState createState() => _TimelineFragmentState();
}

class _TimelineFragmentState extends State<TimelineFragment> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Column(
        children: [
          Text(
            "Present",
            style: TextStyles.getTimelineTimeStamp()
          ),
          Icon(
            CupertinoIcons.smallcircle_fill_circle,
            color: ThemeManager.primaryText,
          ),
          const TimelineElement(
              height: 235,
              rightString: ApplicationStrings.workSpringCT
          ),
          const TimeStamp(timestamp: "January 2021"),
          const TimelineElement(
            height: 250,
            leftString: ApplicationStrings.mastersSPPU
          ),
          const TimeStamp(timestamp: "July 2019"),
          const TimelineElement(
            height: 310,
            leftString: ApplicationStrings.bachelorsSPPU
          ),
          Icon(
            CupertinoIcons.smallcircle_fill_circle,
            color: ThemeManager.primaryText,
          ),
          const TimeStamp(timestamp: "July 2016")
        ]
      )
    );
  }
}

class TimelineElement extends StatelessWidget {
  const TimelineElement({
    Key? key,
    required this.height,
    this.leftString = ApplicationStrings.emptyStringList,
    this.rightString = ApplicationStrings.emptyStringList
  }) : super(key: key);

  final double height;
  final List<String> leftString;
  final List<String> rightString;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Gap(vertical: 10),
                Text(
                  leftString[0],
                  textAlign: TextAlign.end,
                  style: TextStyles.getTimelineElementTitle()
                ),
                Text(
                  leftString[1],
                  textAlign: TextAlign.end,
                    style: TextStyles.getTimelineElementLocation()
                ),
                const Gap(vertical: 10),
                Text(
                  leftString[2],
                  textAlign: TextAlign.end,
                    style: TextStyles.getTimelineElementDescription()
                )
              ]
            )
          )
        ),
        const Gap(horizontal: 20),
        TimelinePaint(height: height),
        const Gap(horizontal: 20),
        Expanded(
          child: SizedBox(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(vertical: 10),
                Text(
                  rightString[0],
                  textAlign: TextAlign.start,
                  style: TextStyles.getTimelineElementTitle()
                ),
                Text(
                  rightString[1],
                  textAlign: TextAlign.start,
                  style: TextStyles.getTimelineElementLocation()
                ),
                const Gap(vertical: 10),
                Text(
                  rightString[2],
                  textAlign: TextAlign.start,
                  style: TextStyles.getTimelineElementDescription()
                )
              ]
            )
          )
        )
      ]
    );
  }
}

class TimelinePaint extends StatelessWidget {
  const TimelinePaint({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: 2,
        child: Container(
          color: ThemeManager.isDarkMode ? Colors.white : ThemeManager.primaryAccent,
        )
    );
  }
}

class TimeStamp extends StatelessWidget {
  const TimeStamp({Key? key, required this.timestamp}) : super(key: key);
  
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Text(
        timestamp,
        style: TextStyles.getTimelineTimeStamp()
      )
    );
  }
}
