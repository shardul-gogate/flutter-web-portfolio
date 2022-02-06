import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({ Key? key, this.vertical = 1, this.horizontal = 1}) : super(key: key);

  final double vertical;
  final double horizontal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical,
      width: horizontal
    );
  }
}
