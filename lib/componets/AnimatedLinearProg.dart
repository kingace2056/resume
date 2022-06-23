import 'package:flutter/material.dart';

import '../constraints.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {required this.percent,
      required this.label,
      required this.barColor,
      Key? key})
      : super(key: key);
  final double? percent;
  final String? label;
  final Color? barColor;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: defaultDuration,
      tween: Tween<double>(begin: 0, end: percent),
      builder: (BuildContext context, dynamic value, Widget? child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label!,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '${(value * 100).toInt().toString()}%',
                  style: TextStyle(
                      fontWeight: FontWeight.w200, color: bodyTextColor),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: value,
              color: barColor,
              backgroundColor: darkColor,
            ),
          ],
        );
      },
    );
  }
}
