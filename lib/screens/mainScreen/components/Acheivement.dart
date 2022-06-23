import 'package:flutter/material.dart';

import '../../../constraints.dart';

class Acheivement extends StatelessWidget {
  const Acheivement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AchivementWidget(
            label: 'Subscribers',
            counter: AchivementAnimation(
              value: 1000,
              text: '+',
            ),
          ),
          AchivementWidget(
            label: 'Videos',
            counter: AchivementAnimation(
              value: 1000,
              text: '+',
            ),
          ),
          AchivementWidget(
            label: 'Github Projects',
            counter: AchivementAnimation(
              value: 30,
              text: '+',
            ),
          ),
        ],
      ),
    );
  }
}

class AchivementWidget extends StatelessWidget {
  const AchivementWidget({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);
  final Widget counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2!,
        ),
      ],
    );
  }
}

class AchivementAnimation extends StatelessWidget {
  AchivementAnimation({Key? key, required this.value, required this.text})
      : super(key: key);
  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: Duration(seconds: 2),
        builder: (context, value, child) => Text(
              '$value$text',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: primaryColor),
            ));
  }
}
