import 'package:flutter/material.dart';

import '../constraints.dart';

class AnimatedProgressIndicator extends StatelessWidget {
  const AnimatedProgressIndicator({
    Key? key,
    required this.percent,
    required this.label,
    required this.barColor,
  }) : super(key: key);
  final double? percent;
  final String? label;
  final Color? barColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percent),
              duration: defaultDuration,
              builder: (context, double value, child) =>
                  Stack(fit: StackFit.expand, children: [
                    CircularProgressIndicator(
                      value: percent,
                      color: barColor,
                      backgroundColor: darkColor,
                    ),
                    Center(
                      child: Text(
                        (value * 100).toInt().toString() + "%",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ])),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(
          "$label",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

class addressInfo extends StatelessWidget {
  const addressInfo({
    Key? key,
    this.title,
    this.bText,
  }) : super(key: key);
  final String? title, bText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            bText!,
            style: const TextStyle(color: bodyTextColor),
          )
        ],
      ),
    );
  }
}
