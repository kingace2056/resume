import 'package:flutter/material.dart';

import '../constraints.dart';
import 'AnimatedProgressIndicator.dart';

class skills extends StatelessWidget {
  const skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Expanded(
              child: AnimatedProgressIndicator(
                barColor: flutColor,
                percent: 0.7,
                label: "Flutter",
              ),
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            const Expanded(
              child: AnimatedProgressIndicator(
                barColor: dartColor,
                percent: 0.6,
                label: "Dart",
              ),
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            const Expanded(
              child: AnimatedProgressIndicator(
                barColor: htmlColor,
                percent: 0.8,
                label: "HTML & CSS",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
