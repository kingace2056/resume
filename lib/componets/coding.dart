import 'package:flutter/material.dart';

import '../constraints.dart';
import 'AnimatedLinearProg.dart';

class coding extends StatelessWidget {
  const coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const AnimatedLinearProgressIndicator(
              barColor: flutColor,
              percent: 0.7,
              label: "Flutter",
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            const AnimatedLinearProgressIndicator(
              barColor: dartColor,
              percent: 0.6,
              label: "Dart",
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            const AnimatedLinearProgressIndicator(
              barColor: htmlColor,
              percent: 0.8,
              label: "HTML & CSS",
            ),
          ],
        ),
      ],
    );
  }
}
