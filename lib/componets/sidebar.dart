import 'package:flutter/material.dart';
import 'package:Sarthak_parajuli/componets/sidebar_intro.dart';
import 'package:Sarthak_parajuli/constraints.dart';

class bodyDrawer extends StatelessWidget {
  const bodyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const introSarthak(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const addressInfo(
                  title: 'Address',
                  bText: 'Nepal',
                ),
                const addressInfo(
                  title: 'City',
                  bText: 'Nawalparasi(East)',
                ),
                const addressInfo(
                  title: 'Age',
                  bText: '23',
                ),
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
                        barColor: Colors.blue,
                        percent: 0.7,
                        label: "Flutter",
                      ),
                    ),
                    const SizedBox(
                      width: defaultPadding / 2,
                    ),
                    const Expanded(
                      child: AnimatedProgressIndicator(
                        barColor: Colors.deepPurpleAccent,
                        percent: 0.8,
                        label: "HTML",
                      ),
                    ),
                    const SizedBox(
                      width: defaultPadding / 2,
                    ),
                    const Expanded(
                      child: AnimatedProgressIndicator(
                        barColor: Colors.red,
                        percent: 0.6,
                        label: "CSS",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

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
